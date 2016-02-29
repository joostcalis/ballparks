class BallparksController < ApplicationController
  def index
    ballparks = Ballpark.all
    al_west = get_league(ballparks, "al_west")
    al_central = get_league(ballparks, "al_central")
    al_east = get_league(ballparks, "al_east")
    nl_west = get_league(ballparks, "nl_west")
    nl_central = get_league(ballparks, "nl_central")
    nl_east = get_league(ballparks, "nl_east")

    render json: {
      meta: {
        count: Ballpark.count,
        page: 0
      },
      al_west: al_west,
      al_central: al_central,
      al_east: al_east,
      nl_west: nl_west,
      nl_central: nl_central,
      nl_east: nl_east
    }
  end

  def show
      ballpark = Ballpark.find(params[:id])
      average_rating = get_average(ballpark)
      reviews = ballpark.reviews
      render json: {
        ballpark: ballpark,
        average_rating: average_rating,
        reviews: reviews
        }
  end

  private

  def get_average(ballpark)
    reviews = ballpark.reviews
    if reviews.empty?
      return 0
    else
      review_sum = reviews.inject(0) { |sum, review| sum += review.overall_rating }
      avg_rating = (review_sum.to_f / reviews.count).round
    end
  end

  def get_league(ballparks, league)
    array = []
    ballparks.each do |ballpark|
      if ballpark.league == league
        array << ballpark
      end
    end
    return array
  end


end
