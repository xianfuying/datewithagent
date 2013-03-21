class AgentsController < ApplicationController
  before_filter :authenticate_account_manager!

  def add

  end

  def index
    if account_manager_signed_in?
      @agents = Agent.where(:account_manager_id => current_account_manager.id)
    else
      redirect_to '/account_managers/sign_in'
    end
  end

end
