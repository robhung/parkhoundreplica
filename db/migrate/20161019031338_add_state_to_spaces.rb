class AddStateToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :state, :text
  end
end
