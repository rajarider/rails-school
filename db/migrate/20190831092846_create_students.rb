class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :rollNo
      t.string :name

      t.timestamps
    end
  end
end
