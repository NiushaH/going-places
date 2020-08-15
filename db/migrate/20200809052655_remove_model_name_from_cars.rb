class RemoveModelNameFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :model_name, :string
  end
end
