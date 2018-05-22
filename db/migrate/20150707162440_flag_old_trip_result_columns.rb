class FlagOldTripResultColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :trips, :trip_result, :trip_result_old
  end
end
