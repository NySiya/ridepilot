class AddAltAddressIdToDrivers < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :alt_address_id, :integer
    add_index :drivers, :alt_address_id
  end
end
