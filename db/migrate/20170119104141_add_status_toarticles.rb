class AddStatusToarticles < ActiveRecord::Migration
  def change
    add_column :articles, :status, :integer
  end
end
