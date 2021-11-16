class Rental < ApplicationRecord
  belongs_to :artpiece
  belongs_to :user

  validates :start_time, :end_time, presence: true
end
