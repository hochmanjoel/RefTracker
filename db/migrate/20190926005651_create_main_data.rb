class CreateMainData < ActiveRecord::Migration[6.0]
  def change
    create_table :main_data do |t|
      t.string :email
      t.integer :counter

      t.timestamps
    end
  end
end
