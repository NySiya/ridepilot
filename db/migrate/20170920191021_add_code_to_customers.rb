class AddCodeToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :code, :string
  end
end
