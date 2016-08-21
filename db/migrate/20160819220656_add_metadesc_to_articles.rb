class AddMetadescToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :metadesc, :string
  end
end
