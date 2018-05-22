class AddDriverNotifiedToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :driver_notified, :boolean
  end
end
