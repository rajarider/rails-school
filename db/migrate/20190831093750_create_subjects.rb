class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :subjectCode
      t.string :subjectName
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
