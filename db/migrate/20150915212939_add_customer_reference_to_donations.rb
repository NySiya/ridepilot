class AddCustomerReferenceToDonations < ActiveRecord::Migration[5.1]
  def change
    add_reference :donations, :customer, index: true
  end
end
