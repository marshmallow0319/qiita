class AddEmailCheckedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_checked, :integer
  end
end
