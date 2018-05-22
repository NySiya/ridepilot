class Defaults < ActiveRecord::Migration[5.1]
  def self.up
    change_column_default(:trips, :guest_count, 0)
    change_column_default(:trips, :attendant_count, 0)
    change_column_default(:trips, :deleted_at, '2008-10-03 22:59:52')
    change_column_default(:trips, :group_size, 0)
    change_column_default(:trips, :donation, 0)
  end

  def self.down
    change_column_default(:trips, :guest_count, nil)
    change_column_default(:trips, :attendant_count, nil)
    change_column_default(:trips, :deleted_at, nil)
    change_column_default(:trips, :group_size, nil)
    change_column_default(:trips, :donation, nil)
  end
end
