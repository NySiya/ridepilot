class AddTimeStringToRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :runs, :scheduled_start_time_string, :string
    add_column :runs, :scheduled_end_time_string, :string
    add_column :repeating_runs, :scheduled_start_time_string, :string
    add_column :repeating_runs, :scheduled_end_time_string, :string
  end
end
