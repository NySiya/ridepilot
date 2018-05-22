class AddProviderIdToVehicleMaintenanceScheduleTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicle_maintenance_schedule_types, :provider_id, :integer
    add_index :vehicle_maintenance_schedule_types, :provider_id, name: 'index_veh_maint_sched_type_provider_id'
  end
end
