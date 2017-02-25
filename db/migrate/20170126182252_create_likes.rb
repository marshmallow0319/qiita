class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.timestamps null: false
      t.integer :user_id
      t.integer :article_id
    end
  end
end
