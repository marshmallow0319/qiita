class ChangeProviderOptionsToUsers < ActiveRecord::Migration
  def up
    change_column :users, :provider, :string, null: true, default: nil
    change_column :users, :uid, :string, null: true, default: nil
  end

  def down
    change_column :users, :provider, :string, null: false, default: ""
    change_column :users, :uid, :string, null: false, default: ""

  end
end
