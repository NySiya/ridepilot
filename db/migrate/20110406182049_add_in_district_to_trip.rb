class AddInDistrictToTrip < ActiveRecord::Migration[5.1]
  def self.up
    change_table :trips do |t|
      t.boolean :in_district
    end
  end

  def self.down
    change_table :trips do |t|
      t.remove :in_district
    end
  end
end
