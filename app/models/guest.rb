class Guest < ApplicationRecord
  has_many :guest_reservations
  has_many :reservations, through: :guest_reservations
end
