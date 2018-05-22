class MakeRoleFineGrained < ActiveRecord::Migration[5.1]
  def self.up
    change_table :roles do |t|
      t.integer :level
      t.datetime :deleted_at
    end
    for role in Role.all
      role.level = role.admin ? 0 : 100
      role.save!
    end
    change_table :roles do |t|
      t.remove :admin
    end
  end

  def self.down
  end
end
