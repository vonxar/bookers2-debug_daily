class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(chat)
    Chat.create!(message: chat['chat'][0], user_id: chat['chat'][1].to_i, room_id: chat['chat'][2].to_i)
    Chat.create!(message: chat['chat'][0], user_id: chat['chat'][1].to_i, room_id: chat['chat'][2].to_i)
    ActionCable.server.broadcast 'room_channel',message: chat['chat'][0]
    
  end
end
