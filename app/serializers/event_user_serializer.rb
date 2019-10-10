class EventUserSerializer
  include FastJsonapi::ObjectSerializer
  attributes 

  belongs_to :event
  belongs_to :user
end
