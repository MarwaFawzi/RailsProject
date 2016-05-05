class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #to upload image
  mount_uploader :profilepicture, AvatarUploader

  #Database Relations
  has_many :courses
  has_many :lectures
  has_many :comments

  #To like a lecture
  acts_as_voter

  #Validation
  validates :name,:dateofbirth,:gender, :presence => true

end
