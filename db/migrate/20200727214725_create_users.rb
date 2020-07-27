class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :cellphone
      t.string :birthdate
      t.string :profile_photo
      t.string :payment_info
      t.string :music_preferences
      t.string :conversation_type
      t.string :hobbies
      t.string :profession
      t.string :alma_mater
      t.integer :user_role
      t.integer :trips
      t.integer :drives
      t.integer :cars
      t.integer :mvr_rating
      t.integer :rating_received
      t.integer :ratings_given
      t.string :comments_received
      t.string :comments_given

      t.timestamps
    end
  end
end
