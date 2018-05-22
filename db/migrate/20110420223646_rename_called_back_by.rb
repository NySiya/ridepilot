class RenameCalledBackBy < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :trips, :called_back_by, :called_back_by_id
  end

  def self.down
    rename_column :trips, :called_back_by_id, :called_back_by
  end
end
