class AddTitleToCustomReports < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_reports, :title, :string
  end
end
