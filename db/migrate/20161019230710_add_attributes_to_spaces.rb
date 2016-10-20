class AddAttributesToSpaces < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :title, :text
    remove_column :spaces, :street, :text
    remove_column :spaces, :suburb, :text
    remove_column :spaces, :state, :text
    remove_column :spaces, :postcode, :text
    remove_column :spaces, :bond, :float
    remove_column :spaces, :available_monday, :boolean
    remove_column :spaces, :available_tuesday, :boolean
    remove_column :spaces, :available_wednesday, :boolean
    remove_column :spaces, :available_thursday, :boolean
    remove_column :spaces, :available_friday, :boolean
    remove_column :spaces, :available_saturday, :boolean
    remove_column :spaces, :available_sunday, :boolean
    add_column :spaces, :space_type, :string
    add_column :spaces, :maximum_entrance_height, :string
    add_column :spaces, :type_of_access, :string
    add_column :spaces, :largest_vehicle, :string
    add_column :spaces, :title, :string
    add_column :spaces, :street, :string
    add_column :spaces, :suburb, :string
    add_column :spaces, :state, :string
    add_column :spaces, :postcode, :string
    add_column :spaces, :price_bond, :float
    add_column :spaces, :available_days, :string
  end
end
