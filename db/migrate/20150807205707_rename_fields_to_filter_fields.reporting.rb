# This migration comes from reporting (originally 20150401144845)
class RenameFieldsToFilterFields < ActiveRecord::Migration[5.1]
  def change
    rename_table :reporting_fields, :reporting_filter_fields
  end
end
