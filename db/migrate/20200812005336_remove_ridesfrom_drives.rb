class RemoveRidesfromDrives < ActiveRecord::Migration[6.0]
  def change
    remove_reference :drives, :ride, null: false, foreign_key: { to_table: :rides }  
  end
end
