class SetInDistrictAsFalseInAddresses < ActiveRecord::Migration[5.1]
  def change
    change_column :addresses, :in_district, :boolean, default: false
  end
end
