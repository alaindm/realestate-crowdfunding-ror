class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :part1
      t.text :part2
      t.text :part3
      t.string :img1
      t.string :img2
      t.string :img3

      t.timestamps
    end
  end
end
