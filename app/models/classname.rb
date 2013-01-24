class Classname < ActiveRecord::Base
  attr_accessible :classname, :desk, :examdate, :floor, :schoolname, :totaldesk
  has_many :identities
end
