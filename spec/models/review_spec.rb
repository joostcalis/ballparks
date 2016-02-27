require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "check that it belongs to a ballpark" do
    it { is_expected.to belong_to(:ballpark) }
  end

  describe "should validate presence of general_experience and ballpark id" do
    it { is_expected.to validate_presence_of(:general_experience) }
    it { is_expected.to validate_presence_of(:ballpark) }
  end
end
