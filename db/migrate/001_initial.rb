class Initial < ActiveRecord::Migration
	def self.up
		create_table :attachments do |table|
			table.integer :post_id, :null => false
			table.string :title, :null => false
			table.string :file_type, :null => false
			table.binary :file_data, :null => false
			table.timestamps
		end
		create_table :categories do |table|
			table.string :name, :null => false
			table.timestamps
		end
		create_table :comments do |table|
			table.integer :post_id, :null => false
			table.integer :author_id, :null => false
			table.string :content, :null => false
			table.string :status, :null => false
			table.timestamps
		end
		create_table :posts do |table|
			table.integer :category_id, :null => false
			table.integer :author_id, :null => false
			table.string :title, :null => false
			table.string :body, :null => false
			table.timestamps
		end
		create_table :tags do |table|
			table.string :name, :null => false
			table.timestamps
		end
		create_table :tags_posts do |table|
			table.integer :tag_id, :null => false
			table.integer :post_id, :null => false
			table.timestamps
		end
		create_table :users do |table|
			table.string :login, :null => false
			table.string :password, :null => false
			table.string :display_name, :null => false
			table.string :email_address, :null => false
			table.string :url, :null => false
			table.string :level, :null => false
			table.timestamps
		end
	end

	def self.down
		drop_table :attachments
		drop_table :categories
		drop_table :comments
		drop_table :posts
		drop_table :tags
		drop_table :tags_posts
		drop_table :users
	end
end
