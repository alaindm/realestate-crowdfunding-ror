class CreateInvestments < ActiveRecord::Migration[5.0]
  def change
    create_table :investments do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.decimal :resquest_amount
      t.decimal :deposit_amount
      t.date :deposit_date
      t.string :status
      t.binary :bond_document

      t.timestamps
    end
    add_index :investments, [:user_id, :project_id, :created_at]
  end
end
