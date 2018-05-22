class CreateDriverHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :driver_histories do |t|
      t.references :driver, index: true
      t.string :event
      t.text :notes
      t.date :event_date

      t.timestamps
    end
  end
end
