class AddIndexToPackages < ActiveRecord::Migration[5.0]
  def change
    add_index :packages, :name, unique: true
  end
end
