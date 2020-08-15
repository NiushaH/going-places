class RemoveRidesfromTrips < ActiveRecord::Migration[6.0]
  def change
    remove_reference :trips, :ride, null: false, foreign_key: { to_table: :rides }
  end
end
