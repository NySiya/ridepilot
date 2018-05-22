class AddTripResultReferences < ActiveRecord::Migration[5.1]
  def change
    add_reference :trips, :trip_result, index: true
  end
end
