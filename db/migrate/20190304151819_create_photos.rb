class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :friend, foreign_key: true
      t.string :picture

      t.timestamps
    end
  end
end
