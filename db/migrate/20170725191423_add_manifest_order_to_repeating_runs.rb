class AddManifestOrderToRepeatingRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :repeating_runs, :manifest_order, :text
  end
end
