class Comment < ActiveRecord::Base
  belongs_to :lecture
  belongs_to :user
 # has_one :user
#  has_one :lecture
end
