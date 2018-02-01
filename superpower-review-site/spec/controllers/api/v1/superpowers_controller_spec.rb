require "rails_helper"

RSpec.describe Api::V1::SuperpowersController, type: :controller do
  let!(:user) { User.create!(email: 'user@gmail.com', password: 'password') }
  let!(:first_superpower) { FactoryBot.create(:superpower) }
  let!(:second_superpower) { FactoryBot.create(:superpower, name: "Super Speed", description: "I want to go super fast") }

  let!(:first_review) { Review.create!(rating: 3, body: "this is a review", user: user, superpower: first_superpower)}
  let!(:second_review) { Review.create!(rating: 5, body: "Super review", user: user, superpower: first_superpower) }


  describe "GET#index" do
    it "should return a list of all the superpowers" do

      get :index
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json["superpowers"].length).to eq 2
      expect(returned_json["superpowers"][0]["name"]).to eq "flying"
      expect(returned_json["superpowers"][0]["description"]).to eq "It is awesome to fly"

      expect(returned_json["superpowers"][1]["name"]).to eq "Super Speed"
      expect(returned_json["superpowers"][1]["description"]).to eq "I want to go super fast"
    end
  end

  describe "GET#show" do
    it "should return a list of all the reviews for the superpowers" do

      get :show, params: {id: first_review.id}
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json["reviews"].length).to eq 2
      expect(returned_json["reviews"][0]["rating"]).to eq 3
      expect(returned_json["reviews"][0]["body"]).to eq "this is a review"

      expect(returned_json["reviews"][1]["rating"]).to eq 5
      expect(returned_json["reviews"][1]["body"]).to eq "Super review"
    end
  end
end
