class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.text "message"
      t.integer "user_id"
      t.references "user"
      t.references "room"
      t.string "name"
      t.timestamps
    end
  end
end
