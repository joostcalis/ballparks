class Ballpark < ActiveRecord::Base
  has_many :reviews

  def has_reviews?
    self.reviews.present?
  end

  def average_rating
    if has_reviews?
      return self.reviews.average(:overall_rating).round(1)
    else
      return 0
    end
  end
end
