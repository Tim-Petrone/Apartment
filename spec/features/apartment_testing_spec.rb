require 'rails_helper'

RSpec.feature "ApartmentTesting", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  context "Apartment App" do
    Steps "Creating an apartment" do
      Given "I am on the apartments/new page" do
        visit '/apartments/new'
        fill_in 'Address', with: '123 Reflection Dr'
        fill_in 'Address2', with: '#1111'
        fill_in 'City', with: 'San Diego'
        fill_in 'Country', with: 'USA'
        fill_in 'State', with: 'CA'
        fill_in 'Manager name', with: 'Mario'
        fill_in 'Manager number', with: '123-123-4567'
        fill_in 'Postal code', with: '12345'
        fill_in 'Hours', with: '9-5'
        find('form input[type="file"]').set('/Users/learn/Downloads/apartment1.jpg')
        click_button 'Create Apartment'
      end
      Then "I can see the inputted information" do
        expect(page).to have_content '123 Reflection Dr'
      end
      Given "I am on the apartments page" do
        visit "/apartments"
      end
      Then "I can see the previously entered information" do
        expect{page}.to_not raise_error
        expect(page).to have_content '123 Reflection Dr'
      end
      And "I can add an image of the apartment" do
        # visit 'apartments/1/edit'
        click_link 'Show'
        click_link 'Edit'
        # click_button 'Choose File'
        find('form input[type="file"]').set('/Users/learn/Downloads/apartment1.jpg')
        click_button 'Update Apartment'
        save_and_open_page
      end
      Then "I can see the image on the show page" do
        expect(page).to have_xpath("//img")
      end
    end
  end
end
