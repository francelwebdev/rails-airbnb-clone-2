class Treehouse < ApplicationRecord
  belongs_to :owner, :class_name => 'User'
  has_many :bookings
  has_many :amenities
  has_many :spaces
end

