class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.integer :driver_user_id
      t.integer :hitchhiker_user_id
      t.string :departure
      t.string :destination
      t.string :ride_photos

      t.timestamps
    end
  end
end
