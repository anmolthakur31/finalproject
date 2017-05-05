class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :timeslot, foreign_key: true
      t.string :dateslot
      t.references :uservehicle, foreign_key: true
      t.string :total_cost

      t.timestamps
    end
  end
end
