class Password < ActiveRecord::Base

  attr_accessible :old_password,:new_password,:new_password_confirmation
  
end
