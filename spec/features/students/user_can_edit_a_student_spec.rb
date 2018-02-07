require 'rails_helper'

describe 'As a user' do
  context 'when I visit edit student page' do
    scenario 'I can edit that student' do
      student = Student.create!(name: 'Billy Jean')

      visit edit_student_path(student)
      fill_in 'Name', with: 'Not My Lover'
      click_on 'Update Student'

      expect(page).to have_content('Not My Lover')
      expect(current_path).to eq(student_path(1))
    end

    scenario 'I can see a form prepopulated with the former student info' do
      student = Student.create!(name: 'Billy Jean')

      visit edit_student_path(student)

      expect(page).to have_field('Name', with: student.name)
    end
  end
end
