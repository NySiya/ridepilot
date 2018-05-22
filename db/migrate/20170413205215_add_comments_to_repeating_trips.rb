class AddCommentsToRepeatingTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :repeating_trips, :comments, :string
  end
end
