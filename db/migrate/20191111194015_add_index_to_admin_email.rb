class AddIndexToAdminEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :admins, :email, unique: true
  end
end
