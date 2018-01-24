require 'rails_helper'

feature 'user can add new reviews' do
  let(:superpower_1) { FactoryBot.create(:superpower) }
  scenario 'user clicks on the add review button and adds a review' do
    visit new_superpower_review_path

    choose('5')
    fill_in 'body', with: 'This is the best.'

    click_button 'Submit Review'

    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
    expect(page).to have_content('5')
    expect(page).to have_content('This is the best.')

  end
end

feature 'user can see list of reviews' do
  let(:superpower_1) { FactoryBot.create(:superpower) }
  let(:review1) {Review.create(rating: 5, body: 'This is great')}
  let(:review2) {Review.create(rating: 3, body: 'This was not as good')}
  scenario 'user sees reviews of a superpower' do

    visit superpower_path(superpower_1)

    expect(page).to have_content('flying')
    expect(page).to have_content('5')
    expect(page).to have_content('This is great')
    expect(page).to have_content('3')
    expect(page).to have_content('This was not as good')

  end
end

feature 'user can update a review of a superpower' do
  let(:superpower_1) { FactoryBot.create(:superpower) }
  let(:superman) { FactoryBot.create(:user) }

  scenario 'user wants to change a review he/she wrote' do

    let(:review1) {Review.create(rating: 5, body: 'This is great', user: superman)}

    visit superpower_path(superpower_1)

    click_button 'Edit'

    expect(page).to have_content('Edit Review')
    expect(page).to have_content('Rating')
    expect(page).to have_content('Review')
    expect(page).to have_content('5')
    expect(page).to have_content('This is great')

  end

  scenario 'user should only see a edit button if they wrote the review' do
    let(:batman) { FactoryBot.create(:user) }
    let(:review1) {Review.create(rating: 5, body: 'This is great', user: superman)}

    visit superpower_path(superpower_1)

    expect(page).to_not have_content("Edit")

  end
end

feature 'a user should be able to delete their review' do
  let(:superpower_1) { FactoryBot.create(:superpower) }
  let(:superman) { FactoryBot.create(:user) }
  scenario 'a user should be able to delete the review he/she wrote' do
    let(:review1) {Review.create(rating: 5, body: 'This is great', user: superman)}

    visit superpower_path(superpower_1)

    click_link 'Delete'

    expect(page).to have_content('Review deleted')
    expect(page).to_not have_content('This is great')
  end

  scenario 'a user should not be able to see the delete button of a review he/she did not write' do
    let(:batman) { FactoryBot.create(:user) }
    let(:review1) {Review.create(rating: 5, body: 'This is great', user: superman)}

    visit superpower_path(superpower_1)

    expect(page).to_not have_content("Delete")

  end
end
