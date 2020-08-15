class RemoveDriverUserIdFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :driver_user_id, :integer
  end
end
