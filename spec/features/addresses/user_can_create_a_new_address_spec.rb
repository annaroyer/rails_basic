require 'rails_helper'

describe 'As a user' do
  context 'when I visit new student address path and I fill in the information and click submit' do
    scenario 'I can create a new address for that student' do
      student = Student.create!(name: 'Billy Jean')

      visit new_student_address_path(student)
      fill_in 'Description', with: 'Summer Address'
      fill_in 'Street', with: 'Sunny Street'
      fill_in 'City', with: 'Denver'
      fill_in 'State', with: 'Colorado'
      fill_in 'Zip code', with: 80303
      click_on 'Create Address'

      expect(current_path).to eq(student_path(student))
      expect(page).to have_content('Summer Address')
      expect(page).to have_content('Sunny Street')
      expect(page).to have_content('Denver')
      expect(page).to have_content('Colorado')
      expect(page).to have_content('80303')
    end
  end
end

# Creating a New Address
# As a user
# When I visit /students/:id/addresses/new
# And I fill in description with a description (e.g. “Summer Address”)
# And I fill in street with a street address
# And I fill in city with a city
# And I fill in state with a state
# And I fill in zip code with a zip code
# And I click submit
# I am taken to that student’s show page
# And I see the description, street, city, state, and zip on that page
# Student has Many Addresses
# As a user
# When I visit /students/:id
# I see all addresses associated with that student (e.g. if that student has two addresses, I see both)
