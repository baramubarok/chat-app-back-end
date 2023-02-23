class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.integer :recipient_id
      t.integer :sender_id
      # t.integer :id

      t.timestamps
    end
    add_index :conversations, :id
  end
end
