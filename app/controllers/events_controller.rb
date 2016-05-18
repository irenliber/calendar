class EventsController < ApplicationController
  def index
    if params[:date].blank?
      @events = Event.order ("date_start DESC")
    else
      @date = params[:date]
      @events = Event.where(date_start: @date).order("start_time ASC")
    end
  end

  def show

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to events_path(:date => event_params[:date_start])
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to events_path(:date => event_params[:date_start])
    else
      render "edit"
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path(:date => params[:date])
  end

  private

  def event_params
    params.require(:event).permit(:title, :location, :date_start, :date_end, :start_time, :end_time, :done)
  end

end
