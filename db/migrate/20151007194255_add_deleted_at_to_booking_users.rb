class AddDeletedAtToBookingUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :booking_users, :deleted_at, :datetime
  end
end
