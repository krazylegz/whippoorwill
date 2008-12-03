class TagsPosts < ActiveRecord::Migration
	def self.up
		create_table :tags_posts do |table|
			table.integer :tag_id, :null => false
			table.integer :post, :null => false
			table.timestamps
		end
	end

	def self.down
		drop_table :tags_posts
	end
end
