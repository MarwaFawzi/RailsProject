ActiveAdmin.register User do
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :dateofbirth
    column :gender
    column :profilepicture
    column :role
    actions

  end
  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :dateofbirth
      f.input :gender
      f.input :profilepicture
      f.input :role
    end
    f.actions
  end
  permit_params :name, :email, :password , :password_confirmation,:dateofbirth,:gender,:role,:profilepicture
end