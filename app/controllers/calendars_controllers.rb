class CalendarsController < ApplicationController
    before_action :authenticate_user!

    def host
        @rooms = current_user.rooms
        params[:start_date] ||= Date.current.to_s
        params[:room_id] ||= @rooms[0] ? @rooms[0].id : nil

        if params[:room_id]
            @room = Room.find(params[:room_id])
            
        else

        end
    end
end