class CreateCustomerAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses_customers do |t|
      t.references :customer, index: true
      t.references :address, index:true

      t.timestamps
    end
  end
end
