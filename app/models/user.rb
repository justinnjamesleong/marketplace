class User < ApplicationRecord
  extend FriendlyId
  has_many :bids
  has_many :items
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  friendly_id :email, use: :slugged
end
