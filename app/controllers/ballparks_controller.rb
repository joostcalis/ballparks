class BallparksController < ApplicationController
  def index
    render json: {
      meta: {
        count: Ballpark.count,
        page: 0
      },
      ballparks: Ballpark.order(:name)
    }
  end
  
  def show
      ballpark = Ballpark.find(params[:id])
      render json: { ballpark: ballpark}
  end
end
