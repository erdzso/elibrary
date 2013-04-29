# encoding: utf-8

class Book < ActiveRecord::Base
  attr_accessible :author_name, :category, :isbn, :page_count, :publisher_name, :title, :year

  has_many :lendings, class_name: 'Lending'

  def at_lending?
    lendings.last && !lendings.last.finished?
  end

  scope :search, (lambda do |search_text|
    ret = scoped
    search_text.blank? ? ret : ret.where("author_name    LIKE ? OR
                                          category       LIKE ? OR
                                          isbn           LIKE ? OR
                                          publisher_name LIKE ? OR
                                          title          LIKE ? OR
                                          year = ?", "%#{search_text}%", "%#{search_text}%", "%#{search_text}%", "%#{search_text}%", "%#{search_text}%", "%#{search_text}%")
  end)
end
