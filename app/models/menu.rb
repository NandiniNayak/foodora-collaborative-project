class Menu < ApplicationRecord
  belongs_to :restaurant
  mount_uploader :picture, PictureUploader
end
