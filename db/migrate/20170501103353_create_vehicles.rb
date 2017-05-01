class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.text :startyear
      t.references :brand, foreign_key: true
      t.references :model, foreign_key: true
      t.references :variant, foreign_key: true

      t.timestamps
    end
  end
end
