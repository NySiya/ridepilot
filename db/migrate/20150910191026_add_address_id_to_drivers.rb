class AddAddressIdToDrivers < ActiveRecord::Migration[5.1]
  def change
    add_reference :drivers, :address, index: true
  end
end
