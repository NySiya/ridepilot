class AddUncompleteReasonToRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :runs, :uncomplete_reason, :text
  end
end
