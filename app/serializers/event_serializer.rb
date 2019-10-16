class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :date, :start_time, :end_time, :location, :description, :details, :guests, :host, :event_users

  has_many :event_users
  has_many :guests, through: :event_users, source: :user
  belongs_to :host, class_name: "User"
end
