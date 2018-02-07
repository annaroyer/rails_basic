require 'rails_helper'

describe 'As a user' do
  context 'when I visit students index and click delete next to a student' do
    scenario 'I can delete that student' do
      students = create_list(:student, 2)

      visit students_path
      students.each do |student|
        expect(page).to have_content(student.name)
      end
      within(first('ul')) { click_on 'Delete' }

      expect(page).to_not have_content(students.first.name)
      expect(page).to have_content(students.last.name)
    end
  end
end
