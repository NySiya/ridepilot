class AddOccupancyFieldsToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :customer_space_count, :integer
    add_column :trips, :service_animal_space_count, :integer
  end
end
