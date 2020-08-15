class RemoveForeignKeysfromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :trip, null: false, foreign_key: { to_table: :trips }
    remove_reference :users, :driver, null: false, foreign_key: { to_table: :users }
    remove_reference :users, :hitchhiker, null: false, foreign_key: { to_table: :users }
    remove_reference :users, :car, null: false, foreign_key: { to_table: :cars }
    remove_reference :users, :drive, null: false, foreign_key: { to_table: :drives }
  end
end
