# This migration comes from reporting (originally 20150407210811)
class AddFormatterToReportingOutputFields < ActiveRecord::Migration[5.1]
  def change
    add_column :reporting_output_fields, :formatter, :string
  end
end
