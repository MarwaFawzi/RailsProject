class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #to upload image
  mount_uploader :profilepicture, AvatarUploader


  # def role?(r)
  #   role.include? r.to_s
  # end

  has_many :courses
  has_many :users

end
