class CreateDrives < ActiveRecord::Migration[6.0]
  def change
    create_table :drives do |t|
      t.string :departure
      t.string :destination

      t.timestamps
    end
  end
end
