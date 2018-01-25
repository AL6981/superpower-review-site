require 'rails_helper'

feature 'admin views a list of users' do

  scenario 'admin deletes a user' do
    user1 = FactoryBot.create(:user, role: 'admin')
    user2 = FactoryBot.create(:user)


    visit admin_users_path

    expect(page).to have_content('Registered Users')
    expect(page).to have_content('Delete')

    click_on 'Delete'

    expect(page).to have_content("Success")

  end
end
