class AddIndexToOperatingHours < ActiveRecord::Migration[5.1]
  def change
    add_index :operating_hours, [:operatable_id, :operatable_type]
  end
end
