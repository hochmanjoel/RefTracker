class ChangeReferrerIdColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :referrals 
  end
end
