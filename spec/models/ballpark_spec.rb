require 'rails_helper'

RSpec.describe Ballpark, type: :model do
  describe "check has many reviews relation" do
    it { is_expected.to have_many(:reviews) }
  end
end
