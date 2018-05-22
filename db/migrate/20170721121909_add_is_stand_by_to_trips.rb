class AddIsStandByToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :is_stand_by, :boolean
  end
end
