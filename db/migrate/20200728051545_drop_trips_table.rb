class DropTripsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :trips
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
