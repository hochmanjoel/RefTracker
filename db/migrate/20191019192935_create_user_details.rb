class CreateUserDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :user_details do |t|
      t.integer :userid_referred

      t.timestamps
    end
  end
end
