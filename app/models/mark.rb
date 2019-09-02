class Mark < ApplicationRecord
  validates :individualMark, presence: true

  belongs_to :student
  belongs_to :subject

  def checkDuplicate
    duplicateEntry = Mark.where(["student_id = ? and subject_id = ?", "#{self.student_id}", "#{self.subject_id}"])
    return true if duplicateEntry.length == 0 
  end
end
