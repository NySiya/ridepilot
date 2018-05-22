class AddInitialMileageChangeReasonToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :initial_mileage_change_reason, :text
  end
end
