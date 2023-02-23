class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :user
      t.text :message
      t.timestamp :date

      t.timestamps
    end
  end
end
