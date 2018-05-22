class AddSortOrderToReportingOutputFields < ActiveRecord::Migration[5.1]
  def change
    add_column :reporting_output_fields, :sort_order, :integer
  end
end
