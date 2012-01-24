class Server < ActiveRecord::Base

  validates_uniqueness_of :name

  default_scope :order => "name ASC"
  scope :all_prod, :conditions => { :test_server => 0 }
  scope :all_test, :conditions => { :test_server => 1 }
  scope :all_vm, :conditions => { :vm_server => 1 } 

end
