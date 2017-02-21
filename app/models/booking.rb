class Booking < ApplicationRecord
  belongs_to :renter, :class_name => 'User'
  belongs_to :treehouse

  validates :start_date,:end_date, :guest_count, presence: true
  # validates :start_date, :end_date, uniquness: true


end

