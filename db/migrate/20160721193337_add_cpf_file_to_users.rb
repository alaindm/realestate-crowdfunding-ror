class AddCpfFileToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cpf_file, :string
  end
end
