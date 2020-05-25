App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    # 編集
    $('#chats').append("<p>"+data["message"]+"</p>");
    
  speak: (chat) ->
    @perform 'speak', chat: chat

  jQuery(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
    if event.keyCode is 13
      App.room.speak [event.target.value, $('[data-user]').attr('data-user'), $('[data-room]').attr('data-room')]
      event.target.value = ''
      event.preventDefault()