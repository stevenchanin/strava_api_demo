class RidesController < ApplicationController
  before_filter :setup
  
  def index
    @rider_id = params[:athlete_id]
    @rides = @s.rides(:athlete_id => @rider_id)
  end

  def show
    @ride = @s.ride_show(params[:id])
  end

  def efforts
    @ride_id = params[:id]
    @efforts = @s.ride_efforts(@ride_id)
  end

  private
  def setup
    @s = StravaApi::Base.new
  end

end
