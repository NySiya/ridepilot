class RenameIsGroupToGroupByInReportingOutputFields < ActiveRecord::Migration[5.1]
  def change
    rename_column :reporting_output_fields, :is_group, :group_by
  end
end
