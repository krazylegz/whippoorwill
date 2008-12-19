class Comments < ActiveRecord::Migration
	def self.up
		create_table :comments do |table|
			table.integer :post_id, :null => false
			table.integer :author_id, :null => false
			table.string :content, :null => false
			table.string :status, :null => false
			table.timestamps
		end
	end

	def self.down
		drop_table :comments
	end
end
