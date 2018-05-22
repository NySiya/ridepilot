class AddLegalToDriverCompliance < ActiveRecord::Migration[5.1]
  def change
    add_column :driver_compliances, :legal, :boolean
  end
end
