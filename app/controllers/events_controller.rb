class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(name: params[:name], date: params[:date], time: params[:time], description: params[:description])
    @event.save

    redirect_to "/events/#{@event.id}"
  end

  def show
  @event = Event.find_by(id: params[:id])

end
  
end
