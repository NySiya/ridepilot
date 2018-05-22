class AddAddressGroupToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_reference :addresses, :address_group, index: true
  end
end
