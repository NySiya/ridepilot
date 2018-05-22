class CreateCustomerAddressTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_address_types do |t|
      t.string :name
      t.string :code
    end
  end
end
