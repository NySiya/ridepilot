class AddGaragePhoneNumberToVehicle < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :garage_phone_number, :string
  end
end
