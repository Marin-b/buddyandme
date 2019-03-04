class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.references :user, foreign_key: true
      t.text :large_description
      t.string :location
      t.integer :price_per_day

      t.timestamps
    end
  end
end
