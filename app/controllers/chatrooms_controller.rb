class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.create
    @recipient = User.find(params[:recipient_id])
    ChatroomUser.create(user: current_user, chatroom: @chatroom)
    ChatroomUser.create(user: @recipient, chatroom: @chatroom)
    redirect_to @chatroom
  end
  
end
