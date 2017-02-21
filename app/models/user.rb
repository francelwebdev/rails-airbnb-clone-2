class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings
  has_many :treehouses

  validates :email, :encrypted_password, :first_name, :last_name, :phone_number, :birth_date, :contact, :terms_of_service, presence: true
  
  validates :encrypted_password, length: { minimum: 6 }

  validates :email, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }

  validates_acceptance_of :terms_of_service, acceptance: true, :message => "must be abided"

end
