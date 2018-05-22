class AddAliasNameToReportingOutputFields < ActiveRecord::Migration[5.1]
  def change
    add_column :reporting_output_fields, :alias_name, :string
  end
end
