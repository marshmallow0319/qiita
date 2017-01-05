class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :company, :string
    add_column :users, :residence, :string
    add_column :users, :profile, :text
    add_column :users, :avatar, :string
  end
end
