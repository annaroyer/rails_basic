require 'rails_helper'

describe 'As a user' do
  context 'when I visit students index and click a students name' do
    scenario 'I can see the name of that student and all their addresses' do
      student = Student.create!(name: 'Billy Jean')
      addresses = create_list(:address, 2, student: student)

      visit students_path
      click_on student.name

      expect(page).to have_content(student.name)
      addresses.each do |address|
        expect(page).to have_content(address.description)
        expect(page).to have_content(address.street)
        expect(page).to have_content(address.city)
        expect(page).to have_content(address.state)
        expect(page).to have_content(address.zip_code)
      end
    end

    scenario "I can see that student's courses" do
      student = Student.create!
      student_courses = create_list(:student_course, 3, student: student)

      visit students_path
      click_on student.name

      student_courses.each do |student_course|
        expect(page).to have_content(student_course.course.name)
      end
    end
  end
end

# Student has Many Courses
# As a user
# When I visit /students/:id
# I can see a list of courses that student is taking
# Courses Have Many Students
# As a user
# When I visit /courses/:id
# I see the name of that course
# And a list of students enrolled in that course
