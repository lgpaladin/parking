ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  
  permit_params :email, :logo, :first_name, :last_name, :phone, :remember_created_at

  index do
    selectable_column
    id_column
    column :logo
    column :email
    column :first_name
    column :last_name
    column :phone
    column :remember_created_at
    actions
  end
  
  filter :email
  filter :first_name
  filter :last_name
  filter :phone

  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :logo, :phone, :last_name, :first_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
