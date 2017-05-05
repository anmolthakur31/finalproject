class CreateVehicleServices < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_services do |t|
      t.string :basic_cost
      t.references :vehicle, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
