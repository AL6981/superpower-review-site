require 'rails_helper'

feature 'admin update superpowers' do

  scenario 'admin can edit previous post' do
    admin1 = FactoryBot.create(:user, role: "admin")
    sign_in_as(admin1)
    superpower_1 = FactoryBot.create(:superpower)
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

  scenario 'admin can delete a superpower' do
    admin1 = FactoryBot.create(:user, role: "admin")
    sign_in_as(admin1)
    superpower_1 = FactoryBot.create(:superpower)

    visit superpower_path(superpower_1.id)

    click_link "Delete"

    expect(page).to have_content('Superpower successfully deleted')
    expect(page).to_not have_content('flying')

  end
end
