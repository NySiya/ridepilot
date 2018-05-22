class AddPermissionsToLookupTables < ActiveRecord::Migration[5.1]
  def change
    add_column :lookup_tables, :add_value_allowed, :boolean, default: true
    add_column :lookup_tables, :edit_value_allowed, :boolean, default: true
    add_column :lookup_tables, :delete_value_allowed, :boolean, default: true
  end
end
