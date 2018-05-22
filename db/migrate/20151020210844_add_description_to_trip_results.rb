class AddDescriptionToTripResults < ActiveRecord::Migration[5.1]
  def change
    add_column :trip_results, :description, :string
  end
end
