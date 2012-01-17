class AddRebootinstructToServers < ActiveRecord::Migration
  def change
	add_column :servers, :rebootinstruct, :string
  end

end
