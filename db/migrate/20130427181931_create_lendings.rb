class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.integer :user_id
      t.integer :book_id
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
