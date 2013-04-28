class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.integer :user_id
      t.string :type
      t.integer :amount

      t.timestamps
    end
  end
end
