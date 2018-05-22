class AddVehicleTypeToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_reference :vehicles, :vehicle_type, index: true
  end
end
