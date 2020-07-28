class DropTrips < ActiveRecord::Migration[6.0]
  def change
    drop_table :trips do |t|
      t.integer :hitchhiker_user_id, null: false
      t.string :waypoint_departure, null: false
      t.string :waypoint_destination, null: false
      t.string :travel_start_date, null: false
      t.integer :driver_user_id, null: false

      t.timestamps null: false
    end
  end
end
