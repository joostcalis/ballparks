require 'rails_helper'

RSpec.describe ReviewsController, type: :routing do
  describe "routes" do

    it "routes to create" do
      expect(post '/ballparks/1/reviews').to route_to 'reviews#create', ballpark_id: "1"
    end

    it "doesn't route to index" do
      expect(get '/ballparks/1/reviews').not_to be_routable
    end

    it "doesn't route to show" do
      expect(get '/ballparks/1/reviews/2').not_to be_routable, ballpark_id: "1", id: "2"
    end

    it "doesn't route to delete" do
      expect(delete '/ballparks/1/reviews/2').not_to be_routable, ballpark_id: "1", id: "2"
    end

    it "doesn't route to update" do
      expect(put '/ballparks/1/reviews/2').not_to be_routable, ballpark_id: "1", id: "2"
    end

    it "does not route to #edit" do
      expect(patch '/ballparks/1/reviews/2/edit').not_to be_routable, ballpark_id: "1", id: "2"
    end
  end
end
