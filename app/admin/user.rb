ActiveAdmin.register User.includes(:role) do
  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    column :roles, :role_names_str # :roles is the title for the column
    default_actions
  end

  filter :email                       

  form do |f|
    f.inputs "Admin Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :roles, :label => 'Roles', :as => :select, :collection => Role.all if current_user.has_role? :admin # clunky way of ensuring only admin users can grant roles
    end
    f.actions
  end
end
