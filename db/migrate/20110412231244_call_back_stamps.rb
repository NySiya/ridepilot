class CallBackStamps < ActiveRecord::Migration[5.1]
  def self.up
    change_table :trips do |t|
      t.integer :called_back_by 
    end
    change_column :trips, :called_back_at, :datetime
  end

  def self.down
  end
end
