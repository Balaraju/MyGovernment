class CreateDeviceAuthentications < ActiveRecord::Migration
  def change
    create_table :device_authentications do |t|
      t.integer :user_id
      t.string :authentication_token

      t.timestamps null: false
    end
  end
end
