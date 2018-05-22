class AddIsGroupToReportingOutputFields < ActiveRecord::Migration[5.1]
  def change
    add_column :reporting_output_fields, :is_group, :boolean, default: false
  end
end
