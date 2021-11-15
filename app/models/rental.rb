class Rental < ApplicationRecord
  belongs_to :artpiece
  belongs_to :user
end
