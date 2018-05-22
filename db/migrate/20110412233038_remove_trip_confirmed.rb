class RemoveTripConfirmed < ActiveRecord::Migration[5.1]
  def self.up
    change_table :trips do |t|
      t.remove :trip_confirmed
    end
  end

  def self.down
  end
end
