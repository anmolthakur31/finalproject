class Vehicle < ApplicationRecord
  belongs_to :brand
  belongs_to :model
  belongs_to :variant
  has_many :uservehicles ,dependent: :destroy
end