class ChangeColumnInBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :price, :integer
    remove_column :bookings, :total, :integer
    add_column :bookings, :price_total, :float
  end
end
