class CreateDriverRequirementTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :driver_requirement_templates do |t|
      t.references :provider, index: true
      t.string :name
      t.boolean :legal

      t.timestamps
    end
  end
end
