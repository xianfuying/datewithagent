class AgentsController < ApplicationController
  before_filter :authenticate_account_manager!

  def new
  end

  def find
    @available_agents = Agent.where("lower(name) like '%#{params[:query].downcase}%' and account_manager_id IS NULL")

    result = {
        query: params[:query],
        suggestions: @available_agents.map { |agent| agent.name },
        data: @available_agents.map { |agent| agent.name }
    }

    respond_to do |format|
      format.json { render json: result }
    end
  end

  def add
    @agent = Agent.find_by_name(params[:name])
    if @agent.nil?
      redirect_to '/agents/new', alert: 'Agent Not Found.'
    else
      @agent.update_attribute(:account_manager_id, current_account_manager.id)
      redirect_to "/agents"
    end
  end

  def index
    @agents = Agent.where(:account_manager_id => current_account_manager.id)
    @agents_map = generate_agents_mood(@agents)
  end

  # DELETE /agents/1
  # DELETE /agents/1.json
  def destroy
    @agent = Agent.find(params[:id])
    @agent.events.destroy_all
    @agent.update_attribute(:account_manager_id, nil)

    respond_to do |format|
      format.html { redirect_to agents_path }
      format.json { head :no_content }
    end
  end

  private

  def generate_agents_mood agents
    agents_map = {}
    agents.each do |agent|
      events = Event.find_all_by_agent_id(agent.id)
      mood_sum = 0
      events_num = 0
      events.each do |event|
        mood_sum += event.mode
        events_num += 1
      end
      if events_num > 0
        agents_map[agent.name] = mood_sum.div(events_num)
      else
        agents_map[agent.name] = 3
      end
    end
    agents_map
  end

end
