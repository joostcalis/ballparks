class Review < ActiveRecord::Base
  belongs_to :ballpark
  validates_presence_of :general_experience, :ballpark
end
