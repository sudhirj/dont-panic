ActiveAdmin.register Administrator do
  scope_to :current_admin_user, :association_method => :office_admins
  filter :office, :as => :select, :collection => proc {Office.joins(:company).where('companies.admin_user_id = ?',current_admin_user.id)}
  filter :name
  filter :phone_numbers
  filter :email
  filter :created_at
  filter :updated_at
  form do |f|
    f.inputs do
      f.input :office, :as => :select, :collection => Office.joins(:company).where('companies.admin_user_id = ?',current_admin_user.id)
      f.input :name, :required => true
      f.input :phone_numbers, :required => true
      f.input :email
    end
    f.buttons
  end
end
