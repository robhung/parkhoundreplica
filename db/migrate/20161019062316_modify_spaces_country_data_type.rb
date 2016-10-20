class ModifySpacesCountryDataType < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :country, :text
    add_column :spaces, :country, :string
  end
end
