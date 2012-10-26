class Anket < ActiveRecord::Base
  attr_accessible :answer,:name,:userid,:time_start,:time_finish,:time_finish_anket
  belongs_to :user
end
