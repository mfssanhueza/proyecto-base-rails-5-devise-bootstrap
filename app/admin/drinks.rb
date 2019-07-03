ActiveAdmin.register Drink do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :name, :recipe

  form do |f|
    f.semantic_errors # Muestra errores en el formulario
    f.inputs # Construye un input para cada atributo del modelo
    f.actions # Agrega los botones Submit y Cancel
  end

end
