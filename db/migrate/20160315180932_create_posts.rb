class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    t.string :title
    t.text :content
    t.string :user_name
    end
  end
end
