class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :artpieces
  has_many :rentals
  has_many :wishes
  has_many :reviews, through: :rentals

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
end
