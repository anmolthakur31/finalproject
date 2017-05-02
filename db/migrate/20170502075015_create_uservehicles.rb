class CreateUservehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :uservehicles do |t|
      t.string :reg_no
      t.string :manf_year
      t.references :user, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
