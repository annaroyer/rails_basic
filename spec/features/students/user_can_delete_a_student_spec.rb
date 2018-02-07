require 'rails_helper'

describe 'As a user' do
  context 'when I visit students index and click delete next to a student' do
    scenario 'I can delete that student' do
      student = create(:student)

      visit students_path
      expect(page).to have_content(student.name)
      click_on 'Delete'

      expect(page).to_not have_content(student.name)
    end
  end
end
