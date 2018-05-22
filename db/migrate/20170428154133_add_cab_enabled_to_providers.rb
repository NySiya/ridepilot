class AddCabEnabledToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :cab_enabled, :boolean
  end
end
