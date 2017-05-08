class Uservehicle < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  validates :reg_no, presence: true,
					uniqueness: true
  validates :manf_year, presence: true
   
end
