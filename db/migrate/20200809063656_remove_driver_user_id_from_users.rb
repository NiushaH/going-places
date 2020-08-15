class RemoveDriverUserIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :driver_user_id, :integer
  end
end
