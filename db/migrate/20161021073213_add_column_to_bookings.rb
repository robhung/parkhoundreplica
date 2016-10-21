class AddColumnToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :total, :integer
  end
end
