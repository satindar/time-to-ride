class RidesController < ApplicationController

  def index
    @rides = Ride.all
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