# This migration comes from reporting (originally 20150409174930)
class AddFormatterOptionToReportingOutputFields < ActiveRecord::Migration[5.1]
  def change
    add_column :reporting_output_fields, :numeric_precision, :integer
  end
end
