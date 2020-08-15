class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :car_id
      t.integer :trip_id
      t.integer :drive_id
      t.integer :hitchhiker_user_id
      t.integer :driver_user_id

      t.timestamps
    end
  end
end
