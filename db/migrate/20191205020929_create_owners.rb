class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :email
      t.string :google_token
      t.string :google_refresh_token

      t.timestamps
    end
  end
end
