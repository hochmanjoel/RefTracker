class CreateReferrals < ActiveRecord::Migration[6.0]
  def change
    create_table :referrals do |t|
      t.string :email
      t.string :counter
      t.string :integer

      t.timestamps
    end
  end
end
