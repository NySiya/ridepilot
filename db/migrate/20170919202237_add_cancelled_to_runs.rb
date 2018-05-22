class AddCancelledToRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :runs, :cancelled, :boolean
  end
end
