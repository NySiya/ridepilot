class CreateCapacityTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :capacity_types do |t|
      t.string :name
      t.references :provider, index: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
