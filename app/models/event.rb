class Event < ActiveRecord::Base
  attr_accessible :description, :happen_time, :mode, :type
end
