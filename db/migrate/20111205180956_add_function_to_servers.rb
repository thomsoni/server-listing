class AddFunctionToServers < ActiveRecord::Migration
  def change
    add_column :servers, :function, :string   
  end
end
