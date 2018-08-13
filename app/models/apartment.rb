class Apartment < ApplicationRecord
  belongs_to :hotel
  belongs_to :parent_apartment, class_name: Apartment.name, optional: true
end
