require 'rails_helper'

feature 'user views list of superpowers' do
  let!(:superpower_1) { FactoryBot.create(:superpower) }
  scenario 'user visits index page and sees list of superpowers' do
    user1 = FactoryBot.create(:user)
    sign_in_as(user1)

    visit superpowers_path

    expect(page).to have_content('Superpower Master List')
    expect(page).to have_content('flying')
  end

  scenario 'user clicks on a superpower and views its details' do
    user1 = FactoryBot.create(:user)
    sign_in_as(user1)

    visit superpowers_path

    click_on 'flying'

    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
    expect(page).to have_content('Reviews')
    expect(page).to have_content('Add Review')
    expect(page).to_not have_content('invisibility')
  end
end
