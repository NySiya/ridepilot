class AddResultReasonToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :result_reason, :text
  end
end
