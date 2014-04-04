class User < ActiveRecord::Base
  attr_accessible :name, :password, :email
  validates_uniqueness_of :name, :email
  validates_length_of :name, :within => 4..20
  validates_length_of :password, :within => 6..20
  validates_presence_of :email, :name
end
