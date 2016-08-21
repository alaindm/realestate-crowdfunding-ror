class AddMetakeywordsToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :metakeywords, :string
  end
end
