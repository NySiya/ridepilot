class AddMobilityDeviceAccomomdationsToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :mobility_device_accommodations, :integer
  end
end
