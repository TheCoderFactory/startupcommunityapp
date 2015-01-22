class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.references :user, index: true
      t.string :name
      t.string :email
      t.string :phone
      t.string :tagline
      t.text :about
      t.string :url
      t.string :blog
      t.string :twitter
      t.string :facebook
      t.string :linkedin
      t.string :google
      t.string :github
      t.string :image
      t.string :slug

      t.timestamps null: false
    end
    add_foreign_key :user_profiles, :users
    add_index :user_profiles, :slug, unique: true
  end
end
