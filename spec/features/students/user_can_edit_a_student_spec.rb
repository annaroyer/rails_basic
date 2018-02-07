require 'rails_helper'

describe 'As a user' do
  context 'when I visit edit student page' do
    scenario 'I can edit that student' do
      student = Student.create!(name: 'Billy Jean')

      visit edit_student_path(student)
      fill_in 'Name', with: 'Not My Lover'
      click_on 'Update Student'

      expect(page).to have_content('Not My Lover')
      expect(page).to have_content('Not My Lover updated!')
      expect(current_path).to eq(student_path(1))
    end

    scenario 'I can see a form prepopulated with the former student info' do
      student = Student.create!(name: 'Billy Jean')

      visit edit_student_path(student)

      expect(page).to have_field('Name', with: student.name)
    end
  end
end

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
