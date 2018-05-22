class AddReoccuringToDriverRequirementTemplates < ActiveRecord::Migration[5.1]
  def change
    add_column :driver_requirement_templates, :reoccuring, :boolean
  end
end
