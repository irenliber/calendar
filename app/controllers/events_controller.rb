class EventsController < ApplicationController
  def index
    @events = Event.where(date: params[:date]).order(date_start: :desc)
  end
end
