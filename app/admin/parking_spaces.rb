ActiveAdmin.register ParkingSpace do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :park_id, :uid, :space_type, :status, :pending
  #
  # or
  #
  # permit_params do
  #   permitted = [:park_id, :space_type, :status, :pending, :uid]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
