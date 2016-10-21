class ModifyUsersPhotoToAvatar < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :photo, :string
    add_column :users, :avatar, :string
    add_column :spaces, :photo, :string
  end
end
