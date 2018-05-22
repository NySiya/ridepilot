class AddCustomerNonsharableToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :customer_nonsharable, :boolean, default: false
  end
end
