class ChangeProvidersAddDispatch < ActiveRecord::Migration[5.1]
  def self.up
    add_column :providers, :dispatch, :boolean
  end

  def self.down
    remove_column :providers, :dispatch
  end
end
