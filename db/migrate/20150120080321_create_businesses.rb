class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :logo
      t.text :description
      t.string :slug
      t.integer :owner
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode

      t.timestamps null: false
    end
  end
end
