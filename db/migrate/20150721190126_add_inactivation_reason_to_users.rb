class AddInactivationReasonToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :inactivation_reason, :string
  end
end
