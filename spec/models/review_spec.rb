require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "check that it belongs to a ballpark" do
    it { is_expected.to belong_to(:ballpark) }
  end

  describe "should validate presence of general_experience and ballpark id" do
    it { is_expected.to validate_presence_of(:general_experience) }
    it { is_expected.to validate_presence_of(:ballpark) }
  end

  describe "it should order reviews by id descending" do
      it "orders reviews by id ascending" do
        ballpark = Ballpark.create!(:name => "test")
        review1 = Review.create!(:id => 1, :general_experience => 4, :ballpark => ballpark)
        review2 = Review.create!(:id => 2, :general_experience => 4, :ballpark => ballpark)
        review3 = Review.create!(:id => 3, :general_experience => 4, :ballpark => ballpark)
        review4 = Review.create!(:id => 4, :general_experience => 4, :ballpark => ballpark)
        review5 = Review.create!(:id => 5, :general_experience => 4, :ballpark => ballpark)
        expect(Review.order(id: :desc).limit(5)).to eq([review5, review4, review3, review2, review1])
      end
  end
end
