class AddHitchhikerRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :hitchhiker, null: false,  foreign_key: { to_table: :users }
  end
end
