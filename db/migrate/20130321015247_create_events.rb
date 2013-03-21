class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.text :descriptiont
      t.integer :mode
      t.date :happen_time

      t.timestamps
    end
  end
end
