class EventsController < ApplicationController
    def index
        events = Event.all
        render json: EventSerializer.new(events)
    end

    def show
        event = Event.find_by(id: params[:id])
        render json: EventSerializer.new(event)
    end

    def create
        event = Event.find_or_create_by(event_params)
        render json: EventSerializer.new(event)
    end

end
