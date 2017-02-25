class CreateLikers < ActiveRecord::Migration
  def change
    create_table :likers do |t|

      t.timestamps null: false
      t.integer :like_id
      t.integer :article_id
    end
  end
end
