require 'rails_helper'

feature 'admin views a list of users' do

  scenario 'admin deletes a user' do
    user1 = FactoryBot.create(:user, role: 'admin')
    user2 = FactoryBot.create(:user)
    user3 = FactoryBot.create(:user)
    sign_in_as(user1)

    visit admin_users_path

    expect(page).to have_content('Registered Users')
    expect(page).to have_content(user2.email)
    expect(page).to have_content(user3.email)
    expect(page).to have_content('Delete')

    first(:link, 'Delete').click

    expect(page).to_not have_content(user2.email)
    expect(page).to have_content("Success")
  end
end
