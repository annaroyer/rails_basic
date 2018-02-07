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
