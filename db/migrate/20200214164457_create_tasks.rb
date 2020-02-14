class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :name
      t.integer :number
      t.string :unit
      t.timestamps
    end
  end
end
