class AddDeletedAtToUservehicles < ActiveRecord::Migration[5.0]
  def change
    add_column :uservehicles, :deleted_at, :datetime
    add_index :uservehicles, :deleted_at
  end
end
