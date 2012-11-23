class Password < ActiveRecord::Base
  attr_accessible :new_password, :new_password_confirmation, :userid
end
