class DropDefaultFromAInDistrictColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :addresses, :in_district, :boolean, default: nil
  end
end
