class EventInstancesController < ApplicationController
  
  # def index
  #   @event_instances = EventInstance.all
  # end
  # 
  # def new
  #   @event = Event.find_by_id params[:event_id]
  #   @event_instance = EventInstance.new
  # end
  # 
  # def show
  #   @event_instance = EventInstance.find(params[:id])
  # end

  def create
    @event_instance = EventInstance.new(params[:event_instance])
    @event = Event.find_by_id params[:event_id]

    @event_instance.event = @event

    if @event_instance.save
      flash[:notice] = 'Event instance was successfully created.'
      redirect_to @event
    else
      render :action => "new"
    end
  end

  def destroy
    @event_instance = EventInstance.find(params[:id])
    event = @event_instance.event
    @event_instance.destroy

    flash[:notice] = 'Occasion removed'
    redirect_to event
  end
end