class Users < ActiveRecord::Migration
	def self.up
		create_table :users do |table|
			table.string :login, :null => false
			table.string :password, :null => false
			table.string :display_name, :null => false
			table.string :email_address, :null => false
			table.string :url, :null => false
			table.string :type, :null => false
			table.timestamps
		end
	end

	def self.down
		drop_table :users
	end
end
