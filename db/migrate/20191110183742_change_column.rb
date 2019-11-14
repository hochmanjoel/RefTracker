class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :referrals, :user_id, :referrer_id
  end
end
