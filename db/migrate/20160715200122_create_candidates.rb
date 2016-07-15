class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :company
      t.integer :phone
      t.text :description
      t.string :email

      t.timestamps
    end
  end
end
