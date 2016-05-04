ActiveAdmin.register User do
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :dateofbirth
    column :gender
    column :profilepicture
    actions

  end
  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :gender
      f.input :profilepicture
    end
    f.actions
  end
  permit_params :name, :email, :password , :password_confirmation,:dateofbirth,:gender,:profilepicture
end