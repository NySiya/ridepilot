class AddRunTrackingToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :run_tracking, :boolean
  end
end
