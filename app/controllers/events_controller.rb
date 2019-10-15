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
        event = Event.new(event_params)
        if event.save
            render json: EventSerializer.new(event)
        else
            render json: {error: "Unable to create event."}
        end
    end

    def update
        event = Event.find_by(id: params[:id])
        if event.update(event_params)
            render json: EventSerializer.new(event)
        else
            render json: {error: "Unable to update event."}
        end
    end

    private

    def event_params
        params.require(:event).permit(:name, :date, :start_time, :end_time, :location, :description, :details, :host_id)
    end
end
