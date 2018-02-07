require 'rails_helper'

describe 'As a user' do
  context 'when I visit students index' do
    scenario 'I can see a list of student names' do
      students = create_list(:student, 5)

      visit students_path

      students.each do |student|
        expect(page).to have_content(student.name)
      end
    end
  end
end




# User Can See a List of Students
# As a user
# When I visit /students
# I see a list of student names
# User Can Create a Student
# As a user
# When I visit /students/new
# And I fill in name
# And I click submit
# I am on the student show page
# And I see that student’s name
# User Can Edit a Student
# As a user
# When I visit /students/:id/edit
# And I enter a new name
# And I click submit
# I am on the student show page
# And I can see that student’s new name
# User Can Delete a Student
# As a user
# When I visit /students
# And I click “Delete” next to a student’s name
# I see the students index
# And that student’s name is no longer on the page
# Navigation
# As a user
# When I visit any page
# I see links to see a list of all students, or create a new student
#
# As a user
# When I visit /students
# And I click on a student’s name
# I am taken to a show page for that student
