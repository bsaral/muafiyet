class Classname < ActiveRecord::Base
  attr_accessible :classname, :desk, :examdate, :floor, :schoolname, :totaldesk
  belongs_to :identity
end
