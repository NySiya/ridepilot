class AddMobilityDeviceAccommodationsToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :mobility_device_accommodations, :integer
  end
end
