class AddDriverRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :driver, null: false, foreign_key: { to_table: :users }
  end
end
