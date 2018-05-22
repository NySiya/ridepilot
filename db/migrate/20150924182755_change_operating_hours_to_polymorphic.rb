class ChangeOperatingHoursToPolymorphic < ActiveRecord::Migration[5.1]
  def change
    rename_column :operating_hours, :driver_id, :operatable_id
  end
end
