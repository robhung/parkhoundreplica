class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.text :title
      t.text :description
      t.references :user, foreign_key: true
      t.text :street
      t.text :suburb
      t.text :postcode
      t.text :country
      t.float :latitude
      t.float :longitude
      t.float :bond
      t.float :price_day
      t.float :price_week
      t.float :price_month
      t.time :available_start_time
      t.time :available_end_time
      t.boolean :available_monday
      t.boolean :available_tuesday
      t.boolean :available_wednesday
      t.boolean :available_thursday
      t.boolean :available_friday
      t.boolean :available_saturday
      t.boolean :available_sunday

      t.timestamps
    end
  end
end
