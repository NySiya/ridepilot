class AddServiceLevelToTrips < ActiveRecord::Migration[5.1]
  def self.up
    add_column :trips, :service_level, :string
  end

  def self.down
    remove_column :trips, :service_level
  end
end
