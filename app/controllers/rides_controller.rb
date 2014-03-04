class RidesController < ApplicationController

  def index
    @rides = Ride.all
    @ride_count = Ride.count_of_rides_user_has_joined
  end

  def new
    @ride = Ride.new
  end

  def create
    Ride.create!(ride_params)
    redirect_to root_path
  end

  private

  def ride_params
    params[:ride].permit(:title)
  end
end