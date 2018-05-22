class RenameVehicleCapacities < ActiveRecord::Migration[5.1]
  def change
    rename_table :vehicle_capacities, :capacities
    rename_column :capacities, :vehicle_type_id, :host_id
    add_column :capacities, :type, :string
  end
end
