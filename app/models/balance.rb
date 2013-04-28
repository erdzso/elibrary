class Balance < ActiveRecord::Base
  attr_accessible :user_id, :amount, :type

  belongs_to :user, class_name: 'User', foreign_key: :user_id
end
