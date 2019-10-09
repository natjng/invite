class Event < ApplicationRecord
    has_many :event_users
    has_many :guests, through: :event_users, source: :user
    belongs_to :host, class_name: "User"
    
end
