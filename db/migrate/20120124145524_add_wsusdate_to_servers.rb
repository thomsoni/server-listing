class AddWsusdateToServers < ActiveRecord::Migration
  def change
    add_column :servers, :wsus_date, :string
  end
end
