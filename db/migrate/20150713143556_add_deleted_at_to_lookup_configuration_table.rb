class AddDeletedAtToLookupConfigurationTable < ActiveRecord::Migration[5.1]
  def change
    add_column :lookup_tables, :deleted_at, :datetime
    add_index :lookup_tables, :deleted_at
  end
end
