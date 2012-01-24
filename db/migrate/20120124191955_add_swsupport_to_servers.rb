class AddSwsupportToServers < ActiveRecord::Migration
  def change
    add_column :servers, :app_supported_by, :string
  end
end
