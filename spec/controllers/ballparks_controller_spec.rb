require 'rails_helper'

RSpec.describe BallparksController, type: :controller do
  let!(:ballpark) { Ballpark.create! name: "test ballpark", id: 1, league: "al_west" }
  let!(:review) { Review.create! name: "test", general_experience: 4, overall_rating: 4, ballpark: ballpark, id: 1 }

  describe "#index" do

    it "has a valid index method" do
      get :index
      expect(response).to be_success
    end

    it "returns json" do
      get :index
      expect(response.header['Content-Type']).to include('application/json')
    end

    it 'includes ballparks in reviews' do
      get :index
      json = JSON.parse(response.body)
      review = json['reviews'].first
      expect(review).to include("ballpark")
    end

    it 'fills lists based on league' do
      get :index
      json = JSON.parse(response.body)
      al_west = json["al_west"]
      al_east = json["al_east"]
      expect(al_west.length).to eq(1)
      expect(al_east).to eq([])
    end
  end

  describe "#show" do

    it "has a valid show method" do
      get :show, id: 1
      expect(response).to be_success
    end
  end
end
