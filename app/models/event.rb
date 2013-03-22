class Event < ActiveRecord::Base
  attr_accessible :description, :happen_time, :mode, :event_type, :agent_id

  enum_attr :event_type, ["^Meeting", "Sale Product", "Report Bug"]
end
