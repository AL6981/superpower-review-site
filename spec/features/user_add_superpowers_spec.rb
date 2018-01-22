require 'rails_helper'

feature 'user can add superpowers' do
  let(:superpower_1) { FactoryBot.create(:superpower) }
  let(:superpower_2) { FactoryBot.create(:superpower, name: '') }
  let(:superpower_3) { FactoryBot.create(:superpower, description: '') }

  scenario 'user submit completed form' do

    visit new_superpowers_path

    fill_in 'Name', with: superpower_1.name
    fill_in 'Description', with: superpower_1.description

    click_button 'Add Superpower'

    expect(page).to have_content('Superpower added successfully')
    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
  end

  scenario 'user can not submit blank superpower name' do
    visit new_superpowers_path

    fill_in 'Name', with: superpower_2.name
    fill_in 'Description', with: superpower_2.description

    click_button 'Add Superpower'
    expect(page).to have_content('Name cannot be blank!')
  end

  scenario 'user can not submit blank superpower description' do
    visit new_superpowers_path

    fill_in 'Name', with: superpower_3.name
    fill_in 'Description', with: superpower_3.description

    click_button 'Add Superpower'
    expect(page).to have_content('Description cannot be blank!')
  end
end
