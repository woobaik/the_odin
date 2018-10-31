class User < ApplicationRecord
  has_many :enrollments,
    foreign_key: :student_id,
    class_name: "Enrollment"

  has_many :enrolled_courses,
    through: :enrollments,
    foreign_key: :student_id,
    source: :course
end
