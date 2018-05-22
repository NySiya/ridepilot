class AddMedicaidEligibleToCustomers < ActiveRecord::Migration[5.1]
  def self.up
    add_column :customers, :medicaid_eligible, :boolean
  end

  def self.down
    remove_column :customers, :medicaid_eligible
  end
end
