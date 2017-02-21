class Treehouse < ApplicationRecord
  belongs_to :owner, :class_name => 'User'
  has_many :bookings
  has_many :amenities
  has_many :spaces

  validates :name, :category, :capacity, :bed_count, :location, :tree_type, :description, :rate, presence: true

  validates :name, uniqueness: true


end

