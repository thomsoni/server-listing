class AddHardwareToServers < ActiveRecord::Migration
  def change
    add_column :servers, :hw_cpu, :string
    add_column :servers, :hw_ram, :string
    add_column :servers, :hw_serial, :string
    add_column :servers, :hw_drivecap, :string
  end
end
