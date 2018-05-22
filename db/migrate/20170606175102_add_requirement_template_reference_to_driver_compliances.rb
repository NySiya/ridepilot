class AddRequirementTemplateReferenceToDriverCompliances < ActiveRecord::Migration[5.1]
  def change
    add_reference :driver_compliances, :driver_requirement_template, index: true
  end
end
