class CreateAdaQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :ada_questions do |t|
      t.references :provider, index: true
      t.string :name

      t.timestamps
    end
  end
end
