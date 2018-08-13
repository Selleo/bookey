FactoryBot.define do
  factory :hotel do
    name 'Hilton'
    uid { "#{name}-#{SecureRandom.hex}" }
  end
end
