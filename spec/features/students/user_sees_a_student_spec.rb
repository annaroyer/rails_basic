require 'rails_helper'

describe 'As a user' do
  context 'when I visit student show' do
    scenario 'I can see the name of that student' do
      student = Student.create!(name: 'Billy Jean')

      visit student_path(student)

      expect(page).to have_content(student.name)
    end
  end
end
