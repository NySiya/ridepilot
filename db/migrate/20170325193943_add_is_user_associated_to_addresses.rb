class AddIsUserAssociatedToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :is_user_associated, :boolean
  end
end
