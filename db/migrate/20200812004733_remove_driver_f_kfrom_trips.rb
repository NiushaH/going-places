class RemoveDriverFKfromTrips < ActiveRecord::Migration[6.0]
  def change
    remove_reference :trips, :driver, null: false, foreign_key: { to_table: :users }
  end
end
