class Server < ActiveRecord::Base

  validates_uniqueness_of :name

  validates :ip, :format => {:with => /\A(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]?)\z/, :message => "Invalid IP Address format. [0-255].[0-255].[0-255].[0-255]" } 


  default_scope :order => "name ASC"
  scope :all_prod, :conditions => { :test_server => 0 }
  scope :all_test, :conditions => { :test_server => 1 }
  scope :all_vm, :conditions => { :vm_server => 1 } 

end
