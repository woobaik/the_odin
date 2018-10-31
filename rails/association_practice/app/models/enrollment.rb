class Enrollment < ApplicationRecord
  belongs_to :user,
    foreign_key: :student_id,
    class_name: "User"

  belongs_to :course,
    foreign_key: :course_id,
    class_name: "Course"
end
