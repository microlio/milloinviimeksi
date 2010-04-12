class EventsController < ApplicationController

  def index
    @events = Event.all
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @event_instance = EventInstance.new
  end

  # def new
  #   @event = Event.new
  # end

  def create
    @event = Event.new(params[:event])

    if @event.save
      flash[:notice] = 'Event was successfully created.'
      redirect_to(@event)
    else
      render :action => "new" 
    end
  end
  
end
