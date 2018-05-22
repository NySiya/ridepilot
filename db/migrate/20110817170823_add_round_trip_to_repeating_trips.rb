class AddRoundTripToRepeatingTrips < ActiveRecord::Migration[5.1]
  def self.up
    add_column :repeating_trips, :round_trip, :boolean
  end

  def self.down
    remove_column :repeating_trips, :round_trip, :boolean
  end
end
