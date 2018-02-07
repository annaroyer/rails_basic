require 'rails_helper'

describe 'As a user' do
  context 'when I visit students index and click a students name' do
    scenario 'I can see the name of that student and all their addresses' do
      student = Student.create!(name: 'Billy Jean')
      addresses = create_list(:address, 2, student: student)

      visit students_path
      click_on student.name

      expect(page).to have_content(student.name)
      addresses.each do |address|
        expect(page).to have_content(address.description)
        expect(page).to have_content(address.street)
        expect(page).to have_content(address.city)
        expect(page).to have_content(address.state)
        expect(page).to have_content(address.zip_code)
      end
    end
  end
end
