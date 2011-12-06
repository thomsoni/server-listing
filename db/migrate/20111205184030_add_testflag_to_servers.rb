class AddTestflagToServers < ActiveRecord::Migration
  def change
    add_column :servers, :test_server, :integer
  end
end
