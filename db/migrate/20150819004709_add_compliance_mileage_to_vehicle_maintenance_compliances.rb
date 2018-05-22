class AddComplianceMileageToVehicleMaintenanceCompliances < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicle_maintenance_compliances, :compliance_mileage, :integer
  end
end
