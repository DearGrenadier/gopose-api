class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :location, null: false
      t.string :money, null: false
      t.string :people, null: false
    end
  end
end
