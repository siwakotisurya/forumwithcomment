class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :topic
      t.string :user_name
      t.text :user_post

      t.timestamps null: false
    end
  end
end
