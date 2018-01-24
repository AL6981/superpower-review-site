require 'rails_helper'

feature 'admin views a list of users' do

  scenario 'admin visits list of users' do
    user1 = FactoryBot.create(:user, role: 'admin')
    user2 = FactoryBot.create(:user)


    visit admin_users_path

    expect(page).to have_content('Registered Users')
    expect(page).to have_content('Delete')

    click_on 'Delete'

    expect(page).to have_content("Success")

  end
end

feature 'user views superpower details' do
  scenario 'user clicks on a superpower and views its details' do
    superpower_1 = FactoryBot.create(:superpower)
    visit superpowers_path
    click_on 'flying'

    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
    expect(page).to have_content('Reviews')
    #expect(page).to have_content('Add Review')
    expect(page).to_not have_content('invisibility')
  end
end
