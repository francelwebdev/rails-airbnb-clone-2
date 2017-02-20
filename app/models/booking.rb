class Booking < ApplicationRecord
  belongs_to :renter
  belongs_to :treehouse
end
