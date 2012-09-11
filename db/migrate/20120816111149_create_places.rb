class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :address
      t.decimal :longitude
      t.decimal :latitude
      t.string :phone_numbers
      t.string :email

      t.references :place_type
      t.references :city
      t.timestamps
    end
  end
end
