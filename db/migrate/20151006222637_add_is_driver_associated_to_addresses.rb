class AddIsDriverAssociatedToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :is_driver_associated, :boolean, default: false
  end
end
