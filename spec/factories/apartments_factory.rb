FactoryBot.define do
  factory :apartment do
    name 'Presidential suite'
    sequence(:uid) { |n| "room-#{n}"}
    hotel

    trait :with_parent do
      parent_apartment { create(:apartment) }
    end
  end
end
