class AgentsController < ApplicationController
  before_filter :authenticate_account_manager!

  def add
    @available_agents = Agent.where("account_manager_id IS NULL")
  end

  def create
    @agent = Agent.find(params[:Agent])
    @agent.update_attribute(:account_manager_id, current_account_manager.id)
    redirect_to "/agents"
  end

  def index
    @agents = Agent.where(:account_manager_id => current_account_manager.id)
  end

end
