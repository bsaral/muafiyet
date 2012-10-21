class Anket < ActiveRecord::Base
  attr_accessible :answer,:name
  belongs_to :user
end
