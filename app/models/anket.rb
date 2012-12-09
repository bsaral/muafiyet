class Anket < ActiveRecord::Base
  attr_accessible :answer,:name,:userid, :time
  belongs_to :user
end
