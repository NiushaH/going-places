class AddUserToRides < ActiveRecord::Migration[6.0]
  def change
    add_reference :rides, :hitchhiker, null: false,  foreign_key: { to_table: :users }
    add_reference :rides, :driver, null: false,  foreign_key: { to_table: :users }
  end
end
