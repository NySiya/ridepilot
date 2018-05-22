class AddUserReferenceToDonations < ActiveRecord::Migration[5.1]
  def change
    add_reference :donations, :user, index: true
  end
end
