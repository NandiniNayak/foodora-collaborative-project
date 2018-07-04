class User < ApplicationRecord
  has_one :restaurant
  has_one :customer
  # dependant/destroy will delete the users comment if they delete their account to avoid conflict 
   has_many :reviews, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
