class Teacher < ApplicationRecord
    has_one :subject
    has_many :students
    belongs_to :user
end
