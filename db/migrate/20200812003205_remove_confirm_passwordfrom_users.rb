class RemoveConfirmPasswordfromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column "users", "confirm_password"
  end
end
