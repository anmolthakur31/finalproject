class RemoveTimeslotreferenceFromBookings < ActiveRecord::Migration[5.0]
  def change
  	remove_reference(:bookings, :timeslot, foreign_key: true)

  end
end
