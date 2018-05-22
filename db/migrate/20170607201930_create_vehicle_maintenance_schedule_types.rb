class CreateVehicleMaintenanceScheduleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_maintenance_schedule_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
