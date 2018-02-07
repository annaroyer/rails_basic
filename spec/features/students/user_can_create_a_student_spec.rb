require 'rails_helper'

describe 'As a user' do
  context 'when I visit new student path' do
    scenario 'I can fill in the student name and create a new student' do
      visit new_student_path

      fill_in 'Name', with: 'Billy Jean'
      click_on 'Create Student'

      expect(current_path).to eq(student_path(1))
      expect(page).to have_content('Billy Jean')
    end
  end
end
