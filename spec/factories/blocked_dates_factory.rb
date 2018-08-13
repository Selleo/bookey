FactoryBot.define do
  factory :blocked_dates do
    from { Date.current + rand(100).days }
    to { from + rand(20).days }
    apartment
    reservation_ids do
      [
        create(:reservation, checkin_date: from, checkout_date: to).tap do |reservation|
          create(:guest_reservation, apartment: apartment, reservation: reservation)
        end.id
      ]
    end
  end
end
