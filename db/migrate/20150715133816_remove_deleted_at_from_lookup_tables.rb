class RemoveDeletedAtFromLookupTables < ActiveRecord::Migration[5.1]
  def change
    remove_column :lookup_tables, :deleted_at
  end
end
