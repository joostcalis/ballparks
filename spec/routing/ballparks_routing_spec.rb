require 'rails_helper'

RSpec.describe BallparksController, type: :routing do
  describe "routes" do
    it "routes to #index" do
      expect(get '/ballparks').to route_to 'ballparks#index'
    end

    it "routes to #show" do
      expect(get '/ballparks/2').to route_to 'ballparks#show', id: "2"
    end
  end
end
