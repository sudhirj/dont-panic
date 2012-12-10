ActiveAdmin.register Company do
  scope_to :current_admin_user
  form do |f|
    f.inputs do
      f.input :name
    end
  end
  config.filters = false
end
