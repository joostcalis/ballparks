require 'rails_helper'

RSpec.describe Ballpark, type: :model do
  describe "check has many reviews relation" do
    it { is_expected.to have_many(:reviews) }
  end
  describe "it should return arrays based on leagues" do
      it "gives an array of selected ballparks" do
        ballpark1 = Ballpark.create!(:league => "al_west")
        ballpark2 = Ballpark.create!(:league => "al_west")
        ballpark3 = Ballpark.create!(:league => "al_west")
        ballpark4 = Ballpark.create!(:league => "al_west")
        ballpark5 = Ballpark.create!(:league => "nl_west")
        ballpark6 = Ballpark.create!(:league => "nl_west")

        expect(Ballpark.where("league = 'al_west'")).to eq([ballpark1, ballpark2, ballpark3, ballpark4])
      end
  end
end
