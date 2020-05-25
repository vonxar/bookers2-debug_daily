class ChatsController < ApplicationController
  
  def show
    @messages = Message.all
  end
  
  def create
    @chas = Chat.new(chat.params[:message])
    @chas.save
  end
end
