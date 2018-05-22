class AddAdaIneligibleReasonToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :ada_ineligible_reason, :text
  end
end
