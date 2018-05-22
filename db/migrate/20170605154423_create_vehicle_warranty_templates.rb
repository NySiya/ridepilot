class CreateVehicleWarrantyTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_warranty_templates do |t|
      t.string :name
      t.references :provider, index: true

      t.timestamps
    end
  end
end
