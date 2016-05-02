class Course < ActiveRecord::Base
  belongs_to :user
  has_one :user
  has_many :lectures

end
