class AddDriveRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :drive, null: false, foreign_key: { to_table: :drives }
  end
end
