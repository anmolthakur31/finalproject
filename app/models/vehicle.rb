class Vehicle < ApplicationRecord
  belongs_to :brand
  belongs_to :model
  belongs_to :variant
end
