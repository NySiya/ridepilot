class AddInactivatedDateToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :inactivated_date, :datetime
    add_column :providers, :inactivated_reason, :string
  end
end
