class AddTripToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :trip, null: false, foreign_key: { to_table: :trips }
  end
end
