require 'rails_helper'

feature 'user updates account' do
  flash = FactoryBot.create(:user)
  scenario 'authenticated user updates profile' do

    visit edit_user_registration_path

    expect(page).to have_content("Update Profile")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
    expect(page).to have_content("Update Photo")
  end

  scenario 'authenticated user deletes profile' do

    visit cancel_user_registration_path

    expect(page).to have_content("Delete Profile")

    click_link "Delete Profile"

    expect(page).to have_content("Profile Deleted")

    expect(flash).to be_nil
  end
end
