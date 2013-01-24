class Identity < ActiveRecord::Base
  attr_accessible :clsname, :exmdate, :exmdesk, :flat, :name, :no, :schname, :ttldesk
  belongs_to :classname
  validates :exmdesk, :presence => true
  validates :exmdesk, :uniqueness => true
end
