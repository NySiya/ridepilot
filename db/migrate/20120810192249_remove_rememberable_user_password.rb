class RemoveRememberableUserPassword < ActiveRecord::Migration[5.1]
  def self.up
    remove_column :users, :remember_created_at
  end
 
  def self.down
    add_column :users, :remember_created_at, :datetime
  end
end
