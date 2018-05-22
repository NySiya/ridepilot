class AddMessageToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :message, :text
  end
end
