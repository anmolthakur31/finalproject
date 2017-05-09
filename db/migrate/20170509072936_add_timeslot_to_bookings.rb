class AddTimeslotToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :timeslot, :string
  end
end
