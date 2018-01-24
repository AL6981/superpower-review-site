require 'rails_helper'

feature 'user can add superpowers' do

  before(:each) do
    user1 = FactoryBot.create(:user)
    sign_in_as(user1)
  end

  let(:superpower_1) { FactoryBot.build(:superpower) }
  let(:superpower_2) { FactoryBot.build(:superpower, name: '')}
  let(:superpower_3) { FactoryBot.build(:superpower, description: '') }


  xscenario 'user submit completed form' do

    visit new_superpower_path(superpower_1)

    fill_in 'Superpower', with: superpower_1.name
    fill_in 'Description', with: superpower_1.description

    click_button 'Add Superpower'

    expect(page).to have_content('Superpower added successfully')
    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
  end

  scenario 'user can not submit blank superpower name' do

    visit new_superpower_path(superpower_2)

    fill_in 'Description', with: superpower_2.description

    click_button 'Add Superpower'

    expect(page).to have_content("Name can't be blank")
  end

  scenario 'user can not submit blank superpower description' do

    visit new_superpower_path(superpower_3)

    fill_in 'Superpower', with: superpower_3.name

    click_button 'Add Superpower'
    expect(page).to have_content("Description can't be blank")
  end
end
