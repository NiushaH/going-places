class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :waypoint_departure
      t.string :waypoint_destination

      t.timestamps
    end
  end
end
