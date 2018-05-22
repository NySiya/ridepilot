class AddAltPhoneNumberToDrivers < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :alt_phone_number, :string
  end
end
