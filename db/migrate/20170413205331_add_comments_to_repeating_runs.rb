class AddCommentsToRepeatingRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :repeating_runs, :comments, :string
  end
end
