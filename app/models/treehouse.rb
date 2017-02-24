class Treehouse < ApplicationRecord
  belongs_to :owner, :class_name => 'User'
  has_many :bookings, dependent: :destroy

  has_many :amenities
  has_many :spaces
  has_attachments :photos, maximum: 2

	validates :name, :category, :capacity, :bed_count, :tree_type, :description, :rate, :address, presence: true
  # validates :name, :category, :capacity, :bed_count, :location, :tree_type, :description, :photos, presence: true
  # validates :name, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def banner_image
    if photos.size > 0
      photos.first.path
    else
      'https://unsplash.it/1280/500'
    end
  end

end

