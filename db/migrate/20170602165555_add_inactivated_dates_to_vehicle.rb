class AddInactivatedDatesToVehicle < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :inactivated_start_date, :date
    add_column :vehicles, :inactivated_end_date, :date
    add_column :vehicles, :active_status_changed_reason, :text
  end
end
