class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, :null => false
      t.string :note
      t.integer :user_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
