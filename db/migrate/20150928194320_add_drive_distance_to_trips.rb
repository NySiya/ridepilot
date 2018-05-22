class AddDriveDistanceToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :drive_distance, :float
  end
end
