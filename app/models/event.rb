class Event < ActiveRecord::Base
  attr_accessible :description, :happen_time, :mode, :event_type
end
