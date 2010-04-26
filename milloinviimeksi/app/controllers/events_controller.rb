class EventsController < ApplicationController

  def index
    @events = current_user.events
    @event = Event.new
  end

  def show
    @event = Event.find_by_id_and_user_id(params[:id], current_user.id)
    @event_instance = EventInstance.new
  end

  # def new
  #   @event = Event.new
  # end

  def create
    @event = Event.new(params[:event])
    @event.user = current_user

    if @event.save
      flash[:notice] = 'Event was successfully created.'
      redirect_to(@event)
    else
      render :action => "new"
    end
  end

  def destroy
    @event = Event.find_by_id_and_user_id(params[:id], current_user.id)
    @event.destroy
    flash[:notice] = 'Event removed'
    redirect_to :events
  end
end
