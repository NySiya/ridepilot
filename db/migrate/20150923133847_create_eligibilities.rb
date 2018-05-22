class CreateEligibilities < ActiveRecord::Migration[5.1]
  def change
    create_table :eligibilities do |t|
      t.string :code, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
