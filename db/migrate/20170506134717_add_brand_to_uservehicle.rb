class AddBrandToUservehicle < ActiveRecord::Migration[5.0]
  def change
  	add_reference :uservehicles, :brand, foreign_key: true
  end
end
