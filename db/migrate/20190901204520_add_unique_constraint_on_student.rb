class AddUniqueConstraintOnStudent < ActiveRecord::Migration[6.0]
  def change
    add_index:students, :rollNo,  :unique => true
    add_index:subjects, :subjectCode, :unique => true
  end
end
