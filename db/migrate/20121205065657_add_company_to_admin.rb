class AddCompanyToAdmin < ActiveRecord::Migration
  def change
    add_column :companies, :admin_user_id, :integer
    add_index :companies, :admin_user_id
  end
end
