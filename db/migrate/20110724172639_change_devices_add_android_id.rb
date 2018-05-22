class ChangeDevicesAddAndroidId < ActiveRecord::Migration[5.1]
  def self.up
    add_column :devices, :android_id, :string
    add_index :devices, :android_id
  end

  def self.down
    remove_column :devices, :android_id
  end
end
