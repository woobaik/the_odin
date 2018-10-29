class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      flash[:success] = "New Event is posted"
      redirect_to event_path(@event)
    else
      flash[:fail] = "Your entry did not post the Event"
      render 'new'
      puts @event.errors.full_messages
    end
  end

  def show
    @event = Event.find_by(id: params[:id])

  end



  private

  def event_params
    params.require(:event).permit(:event_name, :event_date, :event_description)
  end

end
