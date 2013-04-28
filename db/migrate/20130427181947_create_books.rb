class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.integer :page_count
      t.integer :year
      t.string :category
      t.string :publisher_name
      t.string :author_name

      t.timestamps
    end
  end
end
