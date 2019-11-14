class AddOneMoreForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :referrals, :users, column: :referred
  end
end
