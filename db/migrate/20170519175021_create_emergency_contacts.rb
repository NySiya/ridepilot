class CreateEmergencyContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :emergency_contacts do |t|
      t.references :geocoded_address
      t.references :driver
      t.string :name
      t.string :phone_number
      t.string :relationship

      t.timestamps
    end
  end
end
