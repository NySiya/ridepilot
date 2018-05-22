class ChangeTripsResetDefaultForTripResult < ActiveRecord::Migration[5.1]
  def self.up
    change_column_default :trips, :trip_result, ""
    change_column_default :trips, :deleted_at, ""

    old_codes_transposed = {
      "COMP" => "Completed", 
      "CANC" => "Cancelled", 
      "NS" => "No Show", 
      "TD" => "Turndown", 
      "UNMET" => "Unmet Need"}.inject({}) { |m,o| m.merge o[1] => o[0] }
      
    Trip.all.each do |trip| 
      trip.update_attribute :trip_result, trip.trip_result == "Unscheduled" ? "" : old_codes_transposed[trip.trip_result]
    end
  end

  def self.down
    change_column_default :trips, :trip_result, "unscheduled"
  end
end
