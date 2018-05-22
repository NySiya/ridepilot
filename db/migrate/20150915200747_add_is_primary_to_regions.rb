class AddIsPrimaryToRegions < ActiveRecord::Migration[5.1]
  def change
    add_column :regions, :is_primary, :boolean
  end
end
