class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.integer :name
      t.integer :contact_details
      t.integer :office_id
      t.timestamps
    end
  end
end
