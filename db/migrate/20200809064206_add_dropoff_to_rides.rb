class AddDropoffToRides < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :dropoff, :string
  end
end
