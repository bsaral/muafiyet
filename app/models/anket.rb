class Anket < ActiveRecord::Base
  attr_accessible :answer,:name,:userid, :time,:anketid
  belongs_to :user
  belongs_to :identity
end
