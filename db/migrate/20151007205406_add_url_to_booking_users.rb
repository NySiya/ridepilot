class AddUrlToBookingUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :booking_users, :url, :string
  end
end
