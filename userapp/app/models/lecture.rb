class Lecture < ActiveRecord::Base

  #Database Relations
  belongs_to :course
  belongs_to :user
  has_many :comments

  #Upload File
  mount_uploader :attachment, AvatarUploader

  #Like a Lecture
  acts_as_votable

  #Validation
  validates :content,:course_id,:user_id,:presence => true




end
