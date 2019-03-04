class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.references :user, foreign_key: true
      t.references :friend, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :total_price
      t.string :status

      t.timestamps
    end
  end
end
