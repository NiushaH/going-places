class AddTripToRides < ActiveRecord::Migration[6.0]
  def change
    add_reference :rides, :trip, null: false,  foreign_key: { to_table: :trips }
  end
end
