class Proj < ActiveRecord::Base
  belongs_to :user
  attr_accessible :projectname, :status ,:user_id
   validates :projectname, :presence => true
end
