class AgentsController < ApplicationController
  before_filter :authenticate_account_manager!

  def new
    @available_agents = Agent.where("account_manager_id IS NULL").order("name ASC")
  end

  def add
    @agent = Agent.find(params[:id])
    @agent.update_attribute(:account_manager_id, current_account_manager.id)
    redirect_to "/agents"
  end

  def index
    @agents = Agent.where(:account_manager_id => current_account_manager.id)
    @agents_map = generate_agents_mood(@agents)
  end

  private

  def generate_agents_mood agents
    agents_map = {}
    agents.each do |agent|
      events = Event.find_all_by_agent_id(agent.id)
      mood_sum = 0
      events.each do |event|
        mood_sum += event.mode
      end
      agents_map[agent.name] = mood_sum
    end
    agents_map
  end

end
