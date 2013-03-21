class AddAgentIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :agent_id, :integer
  end
end
