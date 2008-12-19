class Tags < ActiveRecord::Migration
	def self.up
		create_table :tags do |table|
			table.string :name, :null => false
			table.timestamps
		end
	end

	def self.down
		drop_table :tags
	end
end
