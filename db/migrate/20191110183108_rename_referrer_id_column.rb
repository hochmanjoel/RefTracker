class RenameReferrerIdColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :referrals, :referrer_id, :user_id
  end
end
