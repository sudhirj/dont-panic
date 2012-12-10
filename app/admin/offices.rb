ActiveAdmin.register Office do
  scope_to :current_admin_user, :association_method => :offices
  filter :company, :as => :select, :collection => proc {Company.where(:admin_user_id => current_admin_user.id)}
  filter :city, :as => :select
  filter :name
  filter :address
  filter :longitude
  filter :latitude
  filter :phone_numbers
  filter :email
  filter :created_at
  filter :updated_at
  filter :map
  form do |f|
    f.inputs do
      f.input :company, :as => :select, :collection => current_admin_user.companies
      f.input :name, :required => true
      f.input :address, :required => true
      f.input :email
      f.input :longitude
      f.input :latitude
      f.input :phone_numbers
      f.input :city, :as => :select, :collection => City.all
    end
    f.buttons
  end
end
