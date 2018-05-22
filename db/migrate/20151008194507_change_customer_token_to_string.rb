class ChangeCustomerTokenToString < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :token, :uuid, default: 'uuid_generate_v4()'
    add_column :customers, :token, :string
  end
end
