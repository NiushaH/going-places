class AddRideToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :ride, null: false, foreign_key: { to_table: :rides }
  end
end
