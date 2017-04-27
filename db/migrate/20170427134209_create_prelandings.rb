class CreatePrelandings < ActiveRecord::Migration[5.0]
  def change
    create_table :prelandings do |t|
      t.string :email
      t.timestamps
    end
  end
end
