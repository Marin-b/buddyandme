class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :description
      t.references :friendship, foreign_key: true

      t.timestamps
    end
  end
end
