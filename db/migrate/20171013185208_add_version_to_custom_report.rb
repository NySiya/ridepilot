class AddVersionToCustomReport < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_reports, :version, :string
  end
end
