class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :category
      t.string :blogger_id

      t.timestamps null: false
    end
  end
end
