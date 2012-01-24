class AddVmToServers < ActiveRecord::Migration
  def change
    add_column :servers, :vm_server, :integer
  end
end
