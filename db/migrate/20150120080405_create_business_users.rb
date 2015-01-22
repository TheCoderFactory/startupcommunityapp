class CreateBusinessUsers < ActiveRecord::Migration
  def change
    create_table :business_users do |t|
      t.references :user, index: true
      t.references :business, index: true

      t.timestamps null: false
    end
    add_foreign_key :business_users, :users
    add_foreign_key :business_users, :businesses
  end
end
