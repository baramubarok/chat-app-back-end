class RoomMessagesController < ApplicationController
    def chat
        @msg = RoomMessage.all
        render json: { message: 'Data Chats', data: @msg }
    end

    def create
        @msg = RoomMessage.create(
            room: params[:room],
            user: params[:user],
            message: params[:message]
        )
        render json: { message: 'Message was sent successfully', data: @msg}
    end
end
