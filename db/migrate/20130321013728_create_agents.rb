class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :account_manager_id

      t.timestamps
    end
  end
end
