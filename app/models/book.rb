class Book < ActiveRecord::Base
  attr_accessible :author_name, :category, :isbn, :page_count, :publisher_name, :title, :year

  has_many :lendings, class_name: 'Lending'
end
