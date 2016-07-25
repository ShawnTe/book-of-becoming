class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, :null => false, :unique => true
      t.string :password_digest
      t.string :profile_image

      t.timestamps null: false
    end
  end
end
