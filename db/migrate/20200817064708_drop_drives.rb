class DropDrives < ActiveRecord::Migration[6.0]
  def change
    remove_reference :drives, :driver, null: false, foreign_key: { to_table: :users }
    remove_reference :drives, :car, null: false, foreign_key: { to_table: :cars }

    drop_table :drives
  end
end
