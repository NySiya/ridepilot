class AddDeletedAtToDriverRequirementTemplates < ActiveRecord::Migration[5.1]
  def change
    add_column :driver_requirement_templates, :deleted_at, :datetime
  end
end
