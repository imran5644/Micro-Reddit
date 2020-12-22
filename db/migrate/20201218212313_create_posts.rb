class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :body
      t.references :user, null:false, foreign_key:true
      t.timestamps
    end
  end
end
