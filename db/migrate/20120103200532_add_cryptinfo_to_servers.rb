class AddCryptinfoToServers < ActiveRecord::Migration
  def change
    add_column :servers, :cryptinfo, :string
  end
end
