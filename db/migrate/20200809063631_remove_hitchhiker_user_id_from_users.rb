class RemoveHitchhikerUserIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :hitchhiker_user_id, :integer
  end
end
