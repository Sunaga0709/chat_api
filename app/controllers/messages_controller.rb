class MessagesController < ApplicationController
  def index
    messages = Message.all
    messages_array = messages.map do |msg|
      {
        id: msg.id,
        user_id: msg.user.id,
        name: msg.user.name,
        content: msg.content,
        email: msg.user.email,
        created_at: msg.created_at
      }
    end

    render json: messages_array, status: 200
  end
end
