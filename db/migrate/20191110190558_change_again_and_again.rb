class ChangeAgainAndAgain < ActiveRecord::Migration[6.0]
  def change
    rename_column :referrals, :referrer_id, :referrer
  end
end
