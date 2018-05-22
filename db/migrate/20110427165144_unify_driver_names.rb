class UnifyDriverNames < ActiveRecord::Migration[5.1]
  def self.up
    add_column :drivers, :name, :string
    # add_column :drivers, :deleted_at, :datetime
    for driver in Driver.all
      driver.name = "%s %s" % [driver.first_name, driver.last_name]
      driver.save!
    end
    remove_column :drivers, :first_name
    remove_column :drivers, :last_name

  end

  def self.down
  end
end
