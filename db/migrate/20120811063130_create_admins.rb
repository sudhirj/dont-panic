class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.integer :office_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
