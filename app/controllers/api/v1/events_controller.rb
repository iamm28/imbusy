class Api::V1::EventsController < ApplicationController

def index
  @events = Event.all
  render json: @events
end

def create
  @event = Event.create(event_params)
  render json: @event, status: 201
end

def new
  @event = Event.new
end

def edit
  @event = Event.find(params[:id])
end

def update
  @event = Event.find(params[:id])
  @event.update(event_params)
  @event.save
  render json: @event
end

def show
  @event = Event.find(params[:id])
  render json: @event, status: 200
end

def destroy
  @event = Event.find(params[:id])
  @event.destroy
  render json: {message:"Event Deleted"}
end

private
  def event_params
    params.require(:event).permit(:title, :date_time, :event_type, :location_id)
  end

end
