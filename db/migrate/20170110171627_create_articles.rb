class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.timestamps null: false
      t.integer :user_id
      t.string :title
      t.text :text
      
    end
  end
end
