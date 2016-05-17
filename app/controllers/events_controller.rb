class EventsController < ApplicationController
  def index
    @events = Event.where(date: params[:date]).order(date_start: :desc)
  end

  def show

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :location)
  end

end
