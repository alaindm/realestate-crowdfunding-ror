class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :type
      t.decimal :offering_value
      t.decimal :rate
      t.text :description
      t.decimal :funded
      t.string :location
      t.string :developer
      t.date :deadline
      t.integer :term
      t.string :file

      t.timestamps
    end
  end
end
