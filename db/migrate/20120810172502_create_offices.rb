class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.integer :city_id
      t.integer :company_id

      t.timestamps
    end
  end
end
