class Brand < ApplicationRecord
	has_many :models, dependent: :destroy
	has_many :vehicles, dependent: :destroy
	has_many :uservehicles, dependent: :destroy
	validates :name, presence: true, uniqueness: true
end
