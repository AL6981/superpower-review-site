require 'rails_helper'

feature 'user update superpowers' do

  scenario 'user can edit previous post' do
    user1 = FactoryBot.create(:user)
    sign_in_as(user1)
    superpower_1 = FactoryBot.create(:superpower, user: user1)
#do we need to visit this link first, the show page, so we can SEE the edit link on the page? Then after clicking edit, we go to the correct page. Not sure why :id isn't generated here. USer id IS generated

    visit superpower_path(superpower_1.id)

    click_link "Edit"

#    visit edit_superpower_path(superpower_1)
    expect(page).to have_content('Edit Superpower')
    expect(page).to have_content("Superpower")
    expect(page).to have_content('flying')
    expect(page).to have_content("Description")
    expect(page).to have_content('It is awesome to fly')

    click_button "Add Superpower"

    expect(page).to have_content("Superpower successfully updated")
  end

  scenario 'user should only see edit link if they added the superpower' do
    user2 = FactoryBot.create(:user)
    sign_in_as(user2)
    user1 = FactoryBot.create(:user)
    superpower_1 = FactoryBot.create(:superpower, user: user1)

    visit superpower_path(superpower_1.id)

    expect(page).to_not have_content("Edit")
    expect(page).to have_content("View all superpowers")

  end

  scenario 'user can delete a superpower they added' do
    user1 = FactoryBot.create(:user)
    sign_in_as(user1)
    superpower_1 = FactoryBot.create(:superpower, user: user1)

    visit superpower_path(superpower_1.id)

    click_link "Delete"

    expect(page).to have_content('Superpower successfully deleted')
    expect(page).to_not have_content('flying')

  end

  scenario 'user should only see delete link if they added the superpower' do
    user1 = FactoryBot.create(:user)
    sign_in_as(user1)
    user2 = FactoryBot.create(:user)
    superpower_2 = FactoryBot.create(:superpower, user: user2)

    visit superpower_path(superpower_2)

    expect(page).to_not have_content("Delete")

  end
end
