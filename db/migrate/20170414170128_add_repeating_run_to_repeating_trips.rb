class AddRepeatingRunToRepeatingTrips < ActiveRecord::Migration[5.1]
  def change
    add_reference :repeating_trips, :repeating_run, index: true
  end
end
