class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :name, :hosted_events, :events

  has_many :event_users
  has_many :events, through: :event_users
  has_many :hosted_events, foreign_key: :host_id, class_name: "Event"
end
