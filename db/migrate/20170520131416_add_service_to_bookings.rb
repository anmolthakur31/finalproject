class AddServiceToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :service, foreign_key: true
  end
end
