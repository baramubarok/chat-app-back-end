class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # t.integer :id
      t.string :username

      t.timestamps
    end
    add_index :users, :id
  end
end
