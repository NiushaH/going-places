class RemoveHitchhikerForeignKeyfromDrives < ActiveRecord::Migration[6.0]
  def change
    remove_reference :drives, :hitchhiker, null: false, foreign_key: { to_table: :users }
  end
end
