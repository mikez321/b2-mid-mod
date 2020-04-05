class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find(params[:mechanic_id])
  end

  def update
    mechanic = Mechanic.find(params[:mechanic_id])
    new_ride = mechanic.all_rides.find(params[:ride_id])
    MechanicRide.create(mechanic_id: "#{mechanic.id}", ride_id: "#{new_ride.id}")
    redirect_to "/mechanics/#{mechanic.id}"
  end


end
