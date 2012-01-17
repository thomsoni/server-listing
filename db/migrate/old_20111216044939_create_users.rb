class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :rightslevel

      t.timestamps
    end
  end
end
