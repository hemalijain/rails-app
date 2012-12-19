class User < ActiveRecord::Base
  attr_accessible :address, :confirmpassword, :dancing, :dob, :gender, :name, :password, :reading, :rollno, :singing
   validates :address,:gender,:name,:rollno, :presence => true
    validates :password, :presence =>true,
                    :length => { :minimum => 5, :maximum => 40 },
                    :confirmation =>true
  validates_confirmation_of :password
  has_many :projs
end
