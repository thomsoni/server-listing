class AddDepartmentsToServers < ActiveRecord::Migration
  def change
    add_column :servers, :dept_affected, :string
  end
end
