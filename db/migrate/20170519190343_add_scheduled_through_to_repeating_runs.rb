class AddScheduledThroughToRepeatingRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :repeating_runs, :scheduled_through, :date
  end
end
