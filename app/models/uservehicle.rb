class Uservehicle < ApplicationRecord
  acts_as_paranoid
  belongs_to :user
  has_many :bookings
  belongs_to :vehicle
  belongs_to :brand
  validates :reg_no, presence: true,
					uniqueness: true
  validates :manf_year, presence: true
  

   def uservehicle_name
    "#{vehicle.brand.name} #{vehicle.model.name} #{vehicle.variant.name}  (#{reg_no}) "
  end

end
