require 'rails_helper'

feature 'user views list of superpowers' do
  let(:superpower_1) { FactoryBot.create(:superpower) }
  scenario 'user visits index page and sees list of superpowers' do
    visit superpowers_path

    expect(page).to have_content('Superpower Master List')
    expect(page).to have_content('flying')
    expect(page).to have_content('Add new superpower')

  end
end

feature 'user views superpower details' do
  let(:superpower_1) { FactoryBot.create(:superpower) }
  let(:superpower_2) { FactoryBot.create(:superpower, name: 'invisibility') }
  scenario 'user clicks on a superpower and views its details' do
    visit superpowers_path

    click 'flying'

    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
    expect(page).to have_content('Reviews')
    expect(page).to have_content('Add Review')
    expect(page).to_not have_content('invisibility')
  end
end
