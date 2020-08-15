class AddCarToRides < ActiveRecord::Migration[6.0]
  def change
    add_reference :rides, :car, null: false,  foreign_key: { to_table: :cars }
  end
end
