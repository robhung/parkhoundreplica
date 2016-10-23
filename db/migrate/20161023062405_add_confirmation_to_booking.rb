class AddConfirmationToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :confirmation, :boolean
  end
end
