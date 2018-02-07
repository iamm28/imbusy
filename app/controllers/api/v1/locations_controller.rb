class Api::V1::LocationsController < ApplicationController

def index
  @locations = Location.all
  render json: @locations
end

# def create
#   @location = Location.create(location_params)
#   render json: @location, status: 201
# end
#
# def new
#   @location = Location.new
# end

# def edit
#   @location = Location.find(params[:id])
# end
#
# def update
#   @location = Location.find(params[:id])
#   @location.update(location_params)
#   @location.save
#   render json: @location
# end

def show
  @location = Location.find(params[:id])
  render json: @location, status: 200
end

# def destroy
#   @location = Location.find(params[:id])
#   @location.destroy
#   render json: {message:"Location Deleted"}
# end

private
  def location_params
    params.require(:location).permit(:name, :address, :website, :phone_number)
  end

end
