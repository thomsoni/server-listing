class AddAssetnoToServers < ActiveRecord::Migration
  def change
    add_column :servers, :assetno, :integer
  end
end
