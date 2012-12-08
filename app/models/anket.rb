class Anket < ActiveRecord::Base
  attr_accessible :answer,:name,:userid
  belongs_to :user
end
