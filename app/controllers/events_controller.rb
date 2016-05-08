class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
  end

  def create
    new_event = Event.new(name: params[:name],)
    redirect_to "/events/#{event.id}"
  end
end
