class Vehicle < ApplicationRecord
  belongs_to :brand
  belongs_to :model
  belongs_to :variant
  has_many :uservehicles ,dependent: :destroy
  has_many :vehicle_services
  has_many :services, through: :vehicle_services

end
