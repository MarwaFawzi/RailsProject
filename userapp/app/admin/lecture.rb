ActiveAdmin.register Lecture do
  index do
    selectable_column
    id_column
    column :content
    column :attachment
    column :course
    column :user_id

    actions

  end
  form do |f|
    f.inputs "Lecture Details" do
      f.input :content
      f.input :attachment
      f.input :course_id
      f.input :user_id
    end
    f.actions
  end

  permit_params :content, :attachment, :course_id , :user_id
end