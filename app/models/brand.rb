class Brand < ApplicationRecord
	has_many :models, dependent: :destroy
	has_many :vehicles, dependent: :destroy
end
