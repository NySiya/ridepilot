class CreateBookingUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :booking_users do |t|
      t.references :user, index: true
      t.string :token

      t.timestamps
    end
  end
end
