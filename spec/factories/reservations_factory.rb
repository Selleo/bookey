FactoryBot.define do
  factory :reservation do
    checkin_date { Date.current + rand(100).days }
    checkout_date { checkin_date + rand(20).days }
    uid { SecureRandom.hex }
  end
end
