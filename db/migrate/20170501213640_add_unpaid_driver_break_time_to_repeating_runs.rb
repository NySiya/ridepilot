class AddUnpaidDriverBreakTimeToRepeatingRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :repeating_runs, :unpaid_driver_break_time, :integer
  end
end
