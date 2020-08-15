class RemoveYearFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :year, :integer
  end
end
