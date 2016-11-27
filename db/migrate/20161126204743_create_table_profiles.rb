class CreateTableProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, null: false, index: true
      t.string :name, limit: 50, null: false
      t.integer :age, null: false
      t.string :city, null: false
      t.string :hair, null: false
      t.string :hair, null: false
      t.boolean :tattoo, null: false, default: false
    end
  end
end
