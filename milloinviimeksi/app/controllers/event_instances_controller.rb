class EventInstancesController < ApplicationController
  
  def index
    @event_instances = EventInstance.all
    @event_instance = EventInstance.new
  end

  def show
    @event_instance = EventInstance.find(params[:id])
  end

  def create
    @event_instance = EventInstance.new(params[:event_instance])

    if @event_instance.save
      flash[:notice] = 'Event instance was successfully created.'
      redirect_to(@event_instance)
    else
      render :action => "new" 
    end
  end
  
end