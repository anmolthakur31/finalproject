class CreateBookedServices < ActiveRecord::Migration[5.0]
  def change
    create_table :booked_services do |t|
      t.references :booking, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
