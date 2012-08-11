class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address_line_1
      t.string :address_line_2

      t.timestamps
    end
  end
end
