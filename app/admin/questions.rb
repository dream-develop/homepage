ActiveAdmin.register Question do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :family_name, :first_name, :family_kana, :first_kana, :phone, :email, :content, :agreement
  #
  # or
  #
  # permit_params do
  #   permitted = [:family_name, :first_name, :family_kana, :first_kana, :phone, :email, :content, :agreement]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :family_name, :first_name, :family_kana, :first_kana, :phone, :email, :content, :agreement
end
