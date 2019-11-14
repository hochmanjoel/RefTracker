class ChangingColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :referrals, :referrer, :referrer_id
  end
end
