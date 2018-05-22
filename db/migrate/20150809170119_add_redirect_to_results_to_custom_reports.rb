class AddRedirectToResultsToCustomReports < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_reports, :redirect_to_results, :boolean, default: false
  end
end
