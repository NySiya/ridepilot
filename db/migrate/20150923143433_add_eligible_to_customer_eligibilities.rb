class AddEligibleToCustomerEligibilities < ActiveRecord::Migration[5.1]
  def change
    add_column :customer_eligibilities, :eligible, :boolean
  end
end
