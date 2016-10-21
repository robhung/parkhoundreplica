class ChangeColumnInSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :price, :integer
    add_column :bookings, :price, :integer
  end
end
