class AddPhotosToSpaces < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :photo, :string
    add_column :spaces, :photos, :json
  end
end
