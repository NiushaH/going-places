class AddRaterRefToRatings < ActiveRecord::Migration[6.0]
  def change
    add_reference :ratings, :hitchhiker, null: false, foreign_key:{to_table: :users}
    add_reference :ratings, :driver, null: false, foreign_key:{to_table: :users}
  end
end
