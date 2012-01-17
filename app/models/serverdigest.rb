class Serverdigest < ActiveRecord::Base


  establish_connection :server_digests
  set_table_name :serverdigests

  validates_uniqueness_of :servername

end
