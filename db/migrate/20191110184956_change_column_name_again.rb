class ChangeColumnNameAgain < ActiveRecord::Migration[6.0]
  def change
    rename_column :referrals, :referrer_id, :referrer
    rename_column :referrals, :referredby_id, :referred
  end
end
