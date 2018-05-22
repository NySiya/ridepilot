class CreateTripPurposes < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_purposes do |t|
      t.string :name

      t.timestamps
    end
  end
end
