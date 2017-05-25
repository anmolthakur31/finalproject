class VehicleService < ApplicationRecord
  belongs_to :vehicle ,optional: true
  belongs_to :service ,optional: true
end
