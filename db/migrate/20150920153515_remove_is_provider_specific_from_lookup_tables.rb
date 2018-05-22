class RemoveIsProviderSpecificFromLookupTables < ActiveRecord::Migration[5.1]
  def change
    remove_column :lookup_tables, :is_provider_specific, :boolean
  end
end
