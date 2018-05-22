class AddMinTripTimeGapToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :min_trip_time_gap_in_mins, :integer, default: 30
  end
end
