class AddOperatableTypeToOperatingHours < ActiveRecord::Migration[5.1]
  def change
    add_column :operating_hours, :operatable_type, :string
  end
end
