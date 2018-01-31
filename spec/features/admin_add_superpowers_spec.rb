require 'rails_helper'

feature 'admin can add superpowers' do

  before(:each) do
    user1 = FactoryBot.create(:user, role: "admin")
    sign_in_as(user1)
  end

  let(:user2) { FactoryBot.create(:user) }
  let(:superpower_1) { FactoryBot.build(:superpower) }
  let(:superpower_2) { FactoryBot.build(:superpower, name: '')}
  let(:superpower_3) { FactoryBot.build(:superpower, description: '') }


  scenario 'admin submit completed form' do

    visit new_admin_superpower_path

    fill_in 'Superpower', with: superpower_1.name
    fill_in 'Description', with: superpower_1.description

    click_button 'Add Superpower'

    expect(page).to have_content('Superpower added successfully')
    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
  end

  scenario 'admin can not submit blank superpower name' do

    visit new_admin_superpower_path

    fill_in 'Description', with: superpower_2.description

    click_button 'Add Superpower'

    expect(page).to have_content("Name can't be blank")
  end

  scenario 'admin can not submit blank superpower description' do

    visit new_admin_superpower_path

    fill_in 'Superpower', with: superpower_3.name

    click_button 'Add Superpower'
    expect(page).to have_content("Description can't be blank")
  end

  scenario 'only admin can create a new superpower' do
    visit root_path
    click_on 'Sign Out'
    sign_in_as(user2)

    visit new_admin_superpower_path

    expect(page).to have_content('Unauthorized access')
  end
end
