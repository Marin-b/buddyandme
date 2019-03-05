class ChangePricePerDayToPricePerHour < ActiveRecord::Migration[5.2]
  def change
    remove_column :friends, :price_per_day
    add_column :friends, :price_per_hour, :integer
  end
end
