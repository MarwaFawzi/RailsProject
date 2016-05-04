ActiveAdmin.register Course do
  index do
    selectable_column
    id_column
    column :title
    column :user_id

    actions

  end

  permit_params :title, :user_id
end