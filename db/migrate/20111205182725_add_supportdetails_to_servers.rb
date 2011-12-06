class AddSupportdetailsToServers < ActiveRecord::Migration
  def change
    add_column :servers, :dependencies, :string
    add_column :servers, :supported_by, :string
  end
end
