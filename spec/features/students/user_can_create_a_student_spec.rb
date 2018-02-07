require 'rails_helper'

describe 'As a user' do
  context 'when I visit new student path' do
    scenario 'I can fill in the student name and create a new student' do
      visit new_student_path

      fill_in 'Name', with: 'Billy Jean'
      click_on 'Create Student'

      expect(page).to have_content('Billy Jean')
    end
  end
end



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
