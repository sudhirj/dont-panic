class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :address1
      t.string :address2
      t.string :longitude
      t.string :latitude
      t.string :contact_number
      t.integer :place_type_id
      t.integer :city_id
      t.timestamps
    end
  end
end
