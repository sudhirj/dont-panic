class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :name
      t.string :phone_numbers
      t.references :office

      t.timestamps
    end
  end
end
