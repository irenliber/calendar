class EventsController < ApplicationController
  def index
    @events = Event.all.order(date_start: :desc)
  end
end
