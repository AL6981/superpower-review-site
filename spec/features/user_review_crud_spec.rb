require 'rails_helper'

feature 'user can do CRUD actions on reviews for a superpower' do

  let(:superman) { FactoryBot.create(:user) }
  before(:each) do
    sign_in_as(superman)
  end

  let(:batman) { FactoryBot.create(:user) }
  let(:superpower_1) { FactoryBot.create(:superpower, user: superman) }
  let!(:review1) { Review.create(rating: 3, body: 'This is great', superpower: superpower_1, user: superman) }
  let!(:review2) { Review.create(rating: 2, body: 'This was not as good', user: batman, superpower: superpower_1) }
  scenario 'user clicks on the add review button and adds a review' do
    visit new_superpower_review_path(superpower_1)

    choose('3')
    fill_in 'Review', with: 'This is the best.'

    click_button 'Submit Review'

    expect(page).to have_content('flying')
    expect(page).to have_content('It is awesome to fly')
    expect(page).to have_content('3')
    expect(page).to have_content('This is the best.')
  end

  scenario 'user sees all reviews of a superpower' do

    visit superpower_path(superpower_1)

    expect(page).to have_content('flying')
    expect(page).to have_content('3')
    expect(page).to have_content('This is great')
    expect(page).to have_content('2')
    expect(page).to have_content('This was not as good')
  end


  scenario 'user can update a review of a superpower' do


    visit superpower_path(superpower_1)


    click_link 'Edit Review'

    expect(page).to have_content('Edit Review')
    expect(page).to have_content('Rating')
    expect(page).to have_content('Review')
    expect(page).to have_content('3')
    expect(page).to have_content('This is great')
  end

  scenario 'user should only be able to edit their own review' do
    visit superpower_path(superpower_1)

    click_link 'Edit Review'

    expect(page).to have_content('Edit Review')
    expect(page).to have_content('Rating')
    expect(page).to have_content('Review')
    expect(page).to_not have_content('This was not as good')
  end

  scenario 'a user should be able to delete their review' do
    visit superpower_path(superpower_1)


    click_link 'Delete Review'

    expect(page).to have_content('Review deleted')
    expect(page).to_not have_content('This is great')
    expect(Review.count).to be(1)
  end
end