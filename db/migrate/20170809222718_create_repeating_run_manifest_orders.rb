class CreateRepeatingRunManifestOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :repeating_run_manifest_orders do |t|
      t.references :repeating_run, index: true
      t.integer :wday
      t.text :manifest_order

      t.timestamps
    end
  end
end
