class AddAdvanceDaySchedulingToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :advance_day_scheduling, :integer
  end
end
