ActiveAdmin.register Meeting do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :start_time, :end_time, :display, :open
  #
  # or
  #
  # permit_params do
  #   permitted = [:start_time, :end_time, :display, :open]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :start_time, :end_time, :display, :open

  form do |f|
    f.inputs do
      f.input :start_time, as: :datetime_picker
      f.input :end_time, as: :datetime_picker
      f.input :display
      f.input :open
    end
    f.actions
  end
end
