class GuestReservation < ApplicationRecord
  belongs_to :reservation
  belongs_to :guest
  belongs_to :apartment
end
