require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  let!(:ballpark) { Ballpark.create! name: "test ballpark" }
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
    end
  end
end
