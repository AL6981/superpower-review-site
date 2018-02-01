require 'rails_helper'

feature 'user can do CRUD actions on reviews for a superpower' do
  let(:superman) { FactoryBot.create(:user) }
  let(:batman) { FactoryBot.create(:user) }
  before(:each) do
    sign_in_as(superman)
  end

  let(:superpower_1) { FactoryBot.create(:superpower, user: superman) }
  let!(:review1) { Review.create(rating: 3, body: 'This is great', superpower: superpower_1, user: superman) }
  let!(:review2) { Review.create(rating: 2, body: 'This was not as good', user: batman, superpower: superpower_1) }


  scenario 'user can update a review of a superpower' do

    visit edit_superpower_review_path(superpower_1, review1)

    expect(page).to have_content('Edit Review')
    expect(page).to have_content('Rating')
    expect(page).to have_content('Review')
    expect(page).to have_content('3')
    expect(page).to have_content('This is great')

    choose('2')
    fill_in('Review', :with => 'This is the best.')

    click_button 'Submit Review'

    expect(page).to have_current_path("/superpowers/#{superpower_1.id}")
  end

  xscenario 'user should only be able to edit their own review' do
    # this test will refer to a page now rendered in react - edit buttons not yet built out
    click_link('Sign Out')
    sign_in_as(batman)

    visit "/superpowers/#{superpower_1.id}"

    click_link 'Edit Review'

    expect(page).to have_content('Rating')
    expect(page).to have_content('Review')
    expect(page).to have_content('2')
    expect(page).to have_content('This was not as good')
  end

  xscenario 'a user should be able to delete their review' do
    # this test will refer to a page now rendered in react - edit buttons not yet built out
    visit "/superpowers/#{superpower_1.id}"

    click_link 'Delete Review'

    expect(page).to have_content('Review deleted')
    expect(page).to_not have_content('This is great')
    expect(Review.count).to be(1)
  end
end
