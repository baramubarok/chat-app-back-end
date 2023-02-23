class RoomsController < ApplicationController
    def index
        @rooms = Room.all
        render json: { message: '', data: @rooms }
    end

    def new
        @room = Room.new
    end

    def show
        @room_message = RoomMessage.new room: @room
        @room_messages = @room.room_messages.includes(:user)
        render json: { message: '', data: @room_messages }
    end

    def create
        @room = Room.create(
            name: params[:name]
        )
        render json: { message: 'Room was created successfully', data: @room }
    end

    def delete
        @rooms = Room.all
        @room = Room.find(params[:id])
        @room.destroy
        render json: { message: 'Room was deleted successfully', data: @rooms }
    end

    def getuser
        @users = User.all
        render json: { message: '', data: @users }
    end

    def user
        @user = User.create(
            username: params[:username]
        )

        render json: { message: '', data: @user }
    end
end
