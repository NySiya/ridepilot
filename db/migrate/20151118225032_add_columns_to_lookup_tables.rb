class AddColumnsToLookupTables < ActiveRecord::Migration[5.1]
  def change
    add_column :lookup_tables, :code_column_name, :string
    add_column :lookup_tables, :description_column_name, :string
  end
end
