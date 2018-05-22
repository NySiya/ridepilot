class AddMileageToTrips < ActiveRecord::Migration[5.1]
  def self.up
    add_column :trips, :mileage, :integer
  end

  def self.down
    remove_column :trips, :mileage
  end
end
