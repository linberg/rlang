class AddDescriptionUrlToPackages < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :description_url, :string
  end
end
