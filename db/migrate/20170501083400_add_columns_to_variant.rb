class AddColumnsToVariant < ActiveRecord::Migration[5.0]
  def change
  	remove_reference(:variants, :model, index: true, foreign_key: true)
  end
end
