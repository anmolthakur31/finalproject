class AddColumnToService < ActiveRecord::Migration[5.0]
  def change
  	add_column :services, :required, :text
  	add_column :services, :covered, :text
  end
end
