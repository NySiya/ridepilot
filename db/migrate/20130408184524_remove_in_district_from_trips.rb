class RemoveInDistrictFromTrips < ActiveRecord::Migration[5.1]
  def self.up
    remove_column :trips, :in_district
  end

  def self.down
    add_column :trips, :in_district
  end
end
