class Vehicle < ApplicationRecord
  belongs_to :brand
  belongs_to :model
  belongs_to :variant
  has_many :uservehicles ,dependent: :destroy
  has_many :vehicle_services
  accepts_nested_attributes_for :vehicle_services, allow_destroy: true
  has_many :services, through: :vehicle_services
  def vehicle_name
    "#{brand.name} #{model.name} #{variant.name}"
  end
end
