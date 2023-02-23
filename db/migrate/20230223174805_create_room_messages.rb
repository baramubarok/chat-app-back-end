class CreateRoomMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :room_messages do |t|
      t.integer :room
      t.integer :user
      t.text :message

      t.timestamps
    end
    add_index :room_messages, :id
  end
end
