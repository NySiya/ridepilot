class AddManifestOrderToRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :runs, :manifest_order, :text
  end
end
