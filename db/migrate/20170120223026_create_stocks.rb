class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|

      t.timestamps null: false
      t.integer :user_id
      t.integer :article_id
      
    end
  end
end
