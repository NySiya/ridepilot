class AddCommentsToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :comments, :text
  end
end
