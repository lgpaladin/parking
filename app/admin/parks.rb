ActiveAdmin.register Park do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  
  permit_params :title, :address, :coordinates, :place_count, :free_place_count, :car_type, :building_type
  
  # or
  #
  # permit_params do
  #   permitted = [:title, :address, :coordinates, :place_count, :free_place_count, :car_type, :building_type]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
