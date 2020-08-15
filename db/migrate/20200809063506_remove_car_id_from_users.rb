class RemoveCarIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :car_id, :integer
  end
end
