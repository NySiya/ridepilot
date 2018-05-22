class AddDeletedAtToEmergencyContact < ActiveRecord::Migration[5.1]
  def change
    add_column :emergency_contacts, :deleted_at, :datetime
  end
end
