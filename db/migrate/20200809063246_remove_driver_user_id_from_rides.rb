class RemoveDriverUserIdFromRides < ActiveRecord::Migration[6.0]
  def change
    remove_column :rides, :driver_user_id, :integer
  end
end
