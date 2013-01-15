class User < ActiveRecord::Base
 
  attr_accessible :username, :password ,:password_confirmation, :role, :userlogin
  has_secure_password
  
  
  ROLES = %w[guest admin]

  def role?(base_role)
      ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
  
  
end
