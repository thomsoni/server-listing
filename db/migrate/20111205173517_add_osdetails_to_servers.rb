class AddOsdetailsToServers < ActiveRecord::Migration
  def change
    add_column :servers, :osver, :string
    add_column :servers, :sqlver, :string
    add_column :servers, :vmloc, :string
  end
end
