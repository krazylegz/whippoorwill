class UpdateUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :login
    remove_column :users, :level
    add_column :users, :role, :string
  end

  def self.down
    remove_column :users, :role
    add_column :users, :login
    add_column :users, :level
  end
end
