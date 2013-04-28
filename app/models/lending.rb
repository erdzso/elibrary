class Lending < ActiveRecord::Base
  attr_accessible :book_id, :finished_at, :started_at, :user_id

  belongs_to :user, class_name: 'User', foreign_key: :user_id
  belongs_to :book, class_name: 'Book', foreign_key: :book_id

  def finished?
    !finished_at.nil?
  end
end
