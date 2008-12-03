class Posts < ActiveRecord::Migration
	def self.up
		create_table :posts do |table|
			table.integer :category_id, :null => false
			table.integer :author_id, :null => false
			table.string :title, :null => false
			table.string :body, :null => false
			table.timestamps
		end
	end

	def self.down
		drop_table :posts
	end
end
