class AddReportableToVehicles < ActiveRecord::Migration[5.1]
  def self.up
    add_column :vehicles, :reportable, :boolean
    Vehicle.update_all :reportable => true
  end

  def self.down
    remove_column :vehicles, :reportable
  end
end
