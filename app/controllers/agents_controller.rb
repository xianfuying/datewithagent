class AgentsController < ApplicationController
  before_filter :authenticate_account_manager!

  def add
    @available_agents = Agent.where("account_manager_id IS NULL").order("name ASC")
  end

  def create
    @agent = Agent.find(params[:id])
    @agent.update_attribute(:account_manager_id, current_account_manager.id)
    redirect_to "/agents"
  end

  def events
    @agent = Agent.find(params[:id])
    @events = @agent.events
  end

  def index
    @agents = Agent.where(:account_manager_id => current_account_manager.id)
  end

end
