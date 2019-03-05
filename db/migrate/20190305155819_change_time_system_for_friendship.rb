class ChangeTimeSystemForFriendship < ActiveRecord::Migration[5.2]
  def change
    remove_column :friendships, :start_date
    remove_column :friendships, :end_date
    add_column :friendships, :start_date, :date
    add_column :friendships, :end_date, :date
    add_column :friendships, :start_hour, :integer
    add_column :friendships, :end_hour, :integer
  end
end
