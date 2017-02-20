class Booking < ApplicationRecord
  belongs_to :renter, :class_name => 'User'
  belongs_to :treehouse

end

 #has_many :sells, :class_name => 'Booking', :foreign_key => 'owner_id'