class CreateVerificationQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :verification_questions do |t|
      t.references :user, index: true
      t.text :question
      t.text :answer
      
      t.timestamps
    end
  end
end
