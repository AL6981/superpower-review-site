require 'rails_helper'

feature 'user update superpowers' do
  let(:superman) { FactoryBot.create(:user) }
  let(:superpower_1) { FactoryBot.create(:superpower, user: superman) }
  scenario 'user can edit previous post' do

    visit superpower_path(superpower_1)

    click_link "Edit"

    expect(page).to have_content('Edit Superpower')
    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
    expect(page).to have_content("Superpower")
    expect(page).to have_content("Description")

    click_button "Update superpower"

    expect(page).to have_content("Superpower updated")
  end

  scenario 'user should only see edit link if they added the superpower' do
    let(:batman) { FactoryBot.create(:user) }

    visit superpower_path(superpower_1)

    expect(page).to_not have_content("Edit")

  end

  scenario 'user can delete a superpower they added' do
    let(:superman) { FactoryBot.create(:user)}

    visit superpower_path(superpower_1)

    click_link "Delete"

    expect(page).to have_content('Superpower deleted')
    expect(page).to_not have_content('flying')

  end

  scenario 'user should only see delete link if they added the superpower' do
    let(:batman) { FactoryBot.create(:user) }

    visit superpower_path(superpower_1)

    expect(page).to_not have_content("Delete")

  end
end
