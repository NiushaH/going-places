class RemoveForeignKeyFromRides < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key "rides", "trips"
  end
end
