class AddUpdatedbyToServers < ActiveRecord::Migration
  def change
    add_column :servers, :updated_by, :string
  end
end
