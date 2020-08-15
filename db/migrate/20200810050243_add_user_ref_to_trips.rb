class AddUserRefToTrips < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :hitchhiker, null: false,  foreign_key: { to_table: :users }
  end
end
