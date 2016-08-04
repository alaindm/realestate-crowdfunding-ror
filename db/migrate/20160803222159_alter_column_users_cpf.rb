class AlterColumnUsersCpf < ActiveRecord::Migration[5.0]
  def up
    change_table :users do |t|
      t.change :cpf, :string
    end
  end
  
  def down
    change_table :users do |t|
      t.change :cpf, :integer
    end
  end
end
