class CreateWeekdayAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :weekday_assignments do |t|
      t.references :repeating_trip, index: true
      t.references :repeating_run, index: true
      t.integer :wday

      t.timestamps
    end
  end
end
