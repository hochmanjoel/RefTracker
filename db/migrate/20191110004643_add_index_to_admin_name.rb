class AddIndexToAdminName < ActiveRecord::Migration[6.0]
  def change
    add_index :admin, :email, unique: true
  end
end
