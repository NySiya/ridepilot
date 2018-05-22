class AddIsElderlyToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :is_elderly, :boolean, default: false
  end
end
