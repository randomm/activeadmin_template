class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids, :first_name, :last_name
  # attr_accessible :title, :body
  
  def role_names_str
    roles = ''
    self.roles.each_with_index do | role, i |
      roles += role.name
      roles += ", " unless i == self.roles.length-1
    end
    return roles
  end
  
  def role_ids
    roles = []
    self.roles.each do | role |
      roles << role.id
    end
    return roles
  end
end
