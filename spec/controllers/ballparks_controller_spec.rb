require 'rails_helper'

RSpec.describe BallparksController, type: :controller do
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
end
