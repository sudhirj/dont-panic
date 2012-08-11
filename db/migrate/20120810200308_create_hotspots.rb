class CreateHotspots < ActiveRecord::Migration
  def change
    create_table :hotspots do |t|
      t.string :name
      t.string :description
      t.string :type
      t.string :reviews
      t.integer :address_id
      t.integer :location_id
      t.integer :contact_id
      t.integer :city_id

      t.timestamps
    end
  end
end
