class AddUserroleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :userrole, foreign_key: true, default: 3
  end
end
