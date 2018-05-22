class AddCustomerInformedToRepeatingTrips < ActiveRecord::Migration[5.1]
  def self.up
    add_column :repeating_trips, :customer_informed, :boolean
  end

  def self.down
    remove_column :repeating_trips, :customer_informed
  end
end
