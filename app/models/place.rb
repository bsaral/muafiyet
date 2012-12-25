class Place < ActiveRecord::Base
  attr_accessible :classname
  has_many :users
end
