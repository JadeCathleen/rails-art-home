class Rental < ApplicationRecord
  belongs_to :artpiece
  belongs_to :user

  validates :start_time, :end_time, presence: true
  validates :status, inclusion: { in: ['pending', 'accepted', 'rejected', 'cancelled'] }
end
