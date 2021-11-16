class Review < ApplicationRecord
  belongs_to :rental

  validates :rating, :content, presence: true
end
