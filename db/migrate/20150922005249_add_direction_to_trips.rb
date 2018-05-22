class AddDirectionToTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :direction, :string, default: :outbound
  end
end
