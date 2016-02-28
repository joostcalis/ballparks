require 'rails_helper'

RSpec.describe BallparksController, type: :controller do
  let!(:ballpark) { Ballpark.create! name: "test ballpark", id: 1 }
  describe "#index" do
    it "has a valid index method" do
      get :index
      expect(response).to be_success
    end
    it "returns json" do
      get :index
      expect(response.header['Content-Type']).to include('application/json')
    end
  end

  describe "#show" do
    it "has a valid show method" do
      get :show, id: 1
      expect(response).to be_success
    end
  end
end
