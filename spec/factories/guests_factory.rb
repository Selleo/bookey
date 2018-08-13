FactoryBot.define do
  factory :guest do
    first_name 'John'
    last_name 'Doe'
    email { "#{first_name.downcase}@#{last_name.downcase}.dev" }
  end
end
