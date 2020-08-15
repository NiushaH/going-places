class RemoveForeignKeyfromRides < ActiveRecord::Migration[6.0]
  def change
    remove_reference :rides, :car, null: false, foreign_key: { to_table: :cars }
    remove_reference :rides, :trip, null: false, foreign_key: { to_table: :trips }
    remove_reference :rides, :drive, null: false, foreign_key: { to_table: :drives }
  end
end
