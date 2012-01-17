class AddAuthenticatedToServers < ActiveRecord::Migration
  def change
    add_column :servers, :authenticated, :string
  end
end
