FactoryBot.define do
  factory :student do
    sequence(:name) { |n| "Name #{n}" }
  end

  factory :address do
    sequence(:description) { |n| "description #{n}" }
    sequence(:street) { |n| "street #{n}" }
    sequence(:state) { |n| "state #{n}" }
    sequence(:city) { |n| "city #{n}" }
    sequence(:zip_code) { |n| n }
    student
  end

  factory :course do
    sequence(:name) { |n| "Course #{n}" }
  end

  factory :student_course do
    student
    course
  end
end
