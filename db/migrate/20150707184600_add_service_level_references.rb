class AddServiceLevelReferences < ActiveRecord::Migration[5.1]
  def change
    add_reference :trips, :service_level, index: true
    add_reference :customers, :service_level, index: true
  end
end
