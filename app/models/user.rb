class User < ActiveRecord::Base

  establish_connection :craig_prod
  set_table_name :users

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password


end
