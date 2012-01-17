class RemoveVmlocFromServers < ActiveRecord::Migration
  def up
	remove_column :servers, :vmloc
  end

  def down
  end
end
