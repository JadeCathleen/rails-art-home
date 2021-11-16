class Artpiece < ApplicationRecord
  CATEGORIES = ["painting", "sculpture", "photo", "drawing"]

  belongs_to :user
  has_many :rentals
  has_many :wishes

  validates :name, :category, :artist, :price_per_day, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
