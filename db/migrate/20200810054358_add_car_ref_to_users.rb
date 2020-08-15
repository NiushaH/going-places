class AddCarRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :car, null: false, foreign_key: { to_table: :cars }
  end
end
