class Uservehicle < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  validates :reg_no, presence: true,
					uniqueness: true
  validates :manf_year, presence: true
   def uservehicle_name
    "#{vehicle.brand.name} #{vehicle.model.name} #{vehicle.variant.name}  (#{reg_no}) "
  end
end
