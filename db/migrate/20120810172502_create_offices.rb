class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.decimal :longitude
      t.decimal :latitude
      t.string :phone_numbers

      t.references :city
      t.references :company

      t.timestamps
    end
  end
end
