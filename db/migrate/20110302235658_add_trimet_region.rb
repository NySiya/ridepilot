class AddTrimetRegion < ActiveRecord::Migration[5.1]
  def self.up
    create_table :regions do |t|
      t.string :name
    end

    add_column :regions, :the_geom, :polygon, :srid => 4326

    add_index :regions, :the_geom, unique: true
  end

  def self.down
    drop_table :regions
  end
end
