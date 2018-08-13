class Reservation < ApplicationRecord
  has_many :guest_reservations
  has_many :guests, through: :guest_reservations
end
