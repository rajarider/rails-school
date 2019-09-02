class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :teacherName

      t.timestamps
    end
  end
end
