class RemoveMakeIdFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :make_id, :integer
  end
end
