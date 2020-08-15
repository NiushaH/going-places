class RemoveDepartureFromRides < ActiveRecord::Migration[6.0]
  def change
    remove_column :rides, :departure, :string
  end
end
