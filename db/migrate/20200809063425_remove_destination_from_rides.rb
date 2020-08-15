class RemoveDestinationFromRides < ActiveRecord::Migration[6.0]
  def change
    remove_column :rides, :destination, :string
  end
end
