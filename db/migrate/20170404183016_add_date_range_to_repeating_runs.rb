class AddDateRangeToRepeatingRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :repeating_runs, :start_date, :date
    add_column :repeating_runs, :end_date, :date
  end
end
