class Restaurant < ApplicationRecord
  belongs_to :user
  has_one :menu
  has_many :reviews
end
