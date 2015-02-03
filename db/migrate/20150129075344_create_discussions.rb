class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.references :user, index: true
      t.string :title
      t.text :content
      t.references :topic, index: true

      t.timestamps null: false
    end
    add_foreign_key :discussions, :users
    add_foreign_key :discussions, :topics
  end
end
