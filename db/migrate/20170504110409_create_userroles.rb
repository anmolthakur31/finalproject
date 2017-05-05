class CreateUserroles < ActiveRecord::Migration[5.0]
  def change
    create_table :userroles do |t|
      t.string :rolename

      t.timestamps
    end
  end
end
