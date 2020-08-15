class AddForeignKeyToRides < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :rides, :trips, column: :trip_id
  end
end
