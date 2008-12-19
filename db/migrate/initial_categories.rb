class Categories < ActiveRecord::Migration
	def self.up
		create_table :categories do |table|
			table.string :name, :null => false
			table.timestamps
		end
	end

	def self.down
		drop_table :categories
	end
end
