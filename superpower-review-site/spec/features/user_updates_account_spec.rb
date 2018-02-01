require 'rails_helper'

feature 'user updates account' do

  let(:flash) { FactoryBot.create(:user) }
  scenario 'authenticated user updates profile' do

    visit edit_user_registration_path
    fill_in "Email", :with => flash.email
    fill_in "Password", :with => flash.password

    click_button "Log in"

    expect(page).to have_content("Edit User")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
    expect(page).to have_content("Password confirmation")
    expect(page).to have_content("Current password")
  end

  scenario 'authenticated user deletes profile' do

    visit edit_user_registration_path

    fill_in "Email", :with => flash.email
    fill_in "Password", :with => flash.password
    click_button "Log in"
    click_on "Cancel my account"

    expect(User.count).to be(0)
  end
end
