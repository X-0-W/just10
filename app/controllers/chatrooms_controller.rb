class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @recipient = User.find(params[:recipient_id])
    test = @chatroom = current_user.chatroom_with(@recipient)
    unless test
      @chatroom = Chatroom.create
      ChatroomUser.create(user: current_user, chatroom: @chatroom)
      ChatroomUser.create(user: @recipient, chatroom: @chatroom)
    end
    redirect_to @chatroom
  end
end
