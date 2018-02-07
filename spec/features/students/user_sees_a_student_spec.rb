require 'rails_helper'

describe 'As a user' do
  context 'when I visit students index and click a students name' do
    scenario 'I can see the name of that student' do
      student = Student.create!(name: 'Billy Jean')

      visit students_path
      click_on student.name

      expect(page).to have_content(student.name)
    end
  end
end


# Navigation
# As a user
# When I visit any page
# I see links to see a list of all students, or create a new student
