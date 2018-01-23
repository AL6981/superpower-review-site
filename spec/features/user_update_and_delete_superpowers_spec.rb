require 'rails_helper'

feature 'user update superpowers' do

  before(:each) do
    user1 = FactoryBot.create(:user)
    sign_in_as(user1)
  end

  let(:superpower_1) { FactoryBot.build(:superpower) }
  let(:superpower_2) { FactoryBot.build(:superpower)}

  scenario 'user can edit previous post' do
#do we need to visit this link first, the show page, so we can SEE the edit link on the page? Then after clicking edit, we go to the correct page. Not sure why :id isn't generated here. USer id IS generated
    visit superpower_path(superpower_1)

    click_link "Edit"

#    visit edit_superpower_path(superpower_1)

    expect(page).to have_content('Edit Superpower')
    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
    expect(page).to have_content("Superpower")
    expect(page).to have_content("Description")

    click_button "Add Superpower"

    expect(page).to have_content("Superpower updated")
  end

  scenario 'user should only see edit link if they added the superpower' do

    visit superpower_path(superpower_2)

    expect(page).to_not have_content("Edit")

  end

  scenario 'user can delete a superpower they added' do

    visit superpower_path(superpower_1)

    click_link "Delete"

    expect(page).to have_content('Superpower deleted')
    expect(page).to_not have_content('flying')

  end

  scenario 'user should only see delete link if they added the superpower' do

    visit superpower_path(superpower_2)

    expect(page).to_not have_content("Delete")

  end
end
