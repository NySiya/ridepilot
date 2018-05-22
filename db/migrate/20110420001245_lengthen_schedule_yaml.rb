class LengthenScheduleYaml < ActiveRecord::Migration[5.1]
  def self.up
    change_column(:repeating_trips, :schedule_yaml, :text)
  end

  def self.down
    change_column(:repeating_trips, :schedule_yaml, :string)
  end
end
