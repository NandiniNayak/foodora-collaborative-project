class Restaurant < ApplicationRecord
  belongs_to :user
  has_one :menu
end
