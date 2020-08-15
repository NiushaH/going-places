class RemoveHitchhikerUserIdFromRides < ActiveRecord::Migration[6.0]
  def change
    remove_column :rides, :hitchhiker_user_id, :integer
  end
end
