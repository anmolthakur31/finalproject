class Vehicle < ApplicationRecord
  belongs_to :brand
  belongs_to :model
  belongs_to :variant
  has_many :uservehicles ,dependent: :destroy
  has_many :vehicles ,dependent: :destroy
  has_many :vehicle_services
  has_many :services, through: :vehicle_services
  def vehicle_name
    "#{brand.name} #{model.name} #{variant.name}"
  end
end
