class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :version
      t.date :publication_date
      t.text :description
      t.string :author_name
      t.string :author_email
      t.string :maintainer_name
      t.string :maintainer_email
      t.timestamps
    end
  end
end
