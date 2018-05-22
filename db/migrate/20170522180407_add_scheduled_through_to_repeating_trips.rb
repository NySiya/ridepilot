class AddScheduledThroughToRepeatingTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :repeating_trips, :scheduled_through, :date
  end
end
