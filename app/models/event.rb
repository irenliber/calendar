class Event < ActiveRecord::Base
  validates :title, :location, :start_time, :end_time, :date_start, :date_end, presence: true
end
