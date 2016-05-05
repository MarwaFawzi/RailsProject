class Course < ActiveRecord::Base

  #Relations
  belongs_to :user
  has_many :lectures

  #Validation
  validates :title, :presence => true, :uniqueness => true
  validates :user_id, :presence => true

end
