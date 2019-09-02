class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :marks

  def checkTeacherExist
    teacherExist = Subject.where("teacher_id = ?", "#{self.teacher_id}")
    return true if teacherExist.length == 0 
  end
end
