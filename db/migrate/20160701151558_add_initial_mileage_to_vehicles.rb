class AddInitialMileageToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :initial_mileage, :integer, default: 0
  end
end
