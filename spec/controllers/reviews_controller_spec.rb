require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  let!(:ballpark) { Ballpark.create! name: "test ballpark", id: 1 }
  let!(:review) { Review.create! valid_attributes }
  let(:valid_attributes) do
    {
      general_experience: 4,
      ballpark_id: ballpark.id
    }
  end

  let(:invalid_attributes) do
    {
      general_experience: ""
    }
  end

  describe "#create" do
    context "with valid params" do
      it "creates a valid new review" do
          expect {
            post :create, ballpark_id: ballpark.to_param, review: valid_attributes
          }.to change(Review, :count).by(1)
      end

      it "includes the correct ballpark" do
        post :create, ballpark_id: ballpark.to_param, review: valid_attributes
        expect(review.ballpark.id).to eq(1)
      end
    end

    context "with invalid params" do
      it "doesnt save a review with invalid params" do
        expect {
          post :create, ballpark_id: ballpark.to_param, review: invalid_attributes
        }.to change(Review, :count).by(0)
      end

      it "raises an error when params are invalid" do
    post :create, ballpark_id: ballpark.to_param, review: invalid_attributes
    json = JSON.parse(response.body)
    expect(json["message"]).to eq("Could not add Review")
      end
    end
  end
end
