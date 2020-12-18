class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :body
      t.timestamps
    end
    add_foreign_key :posts, :users, column: :user_id
  end
end
