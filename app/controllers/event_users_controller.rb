class EventUsersController < ApplicationController
    def index
        event_users = EventUser.all
        render json: event_users
    end

    def create
        event = Event.find_by(id: params[:event_id])
        event_user = EventUser.new(event_id: event.id, user_id: params[:user_id])
        if event_user.save
            render json: EventSerializer.new(event)
        else
            render json: {error: "Unable to rsvp for event."}
        end
    end

    def destroy
        event = Event.find_by(id: params[:event_id])
        event_user = EventUser.find_by(id: params[:id])
        if event_user.destroy
            render json: EventSerializer.new(event)
        else
            render json: {error: "Unable to remove rsvp for event."}
        end
    end
end
