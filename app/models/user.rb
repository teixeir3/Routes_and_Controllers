class User < ActiveRecord::Base
  attr_accessible :name, :email, :username
  validates(:name, :email, :presence => true)
  validates(:username, :presense => true, :uniqueness => true)


end
