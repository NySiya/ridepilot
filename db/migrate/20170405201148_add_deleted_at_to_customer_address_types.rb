class AddDeletedAtToCustomerAddressTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :customer_address_types, :deleted_at, :datetime
  end
end
