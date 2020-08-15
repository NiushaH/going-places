class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.integer :make_id
      t.string :model_name
      t.integer :year
      t.integer :driver_user_id

      t.timestamps
    end
  end
end
