class Initial < ActiveRecord::Migration
	def self.up
		create_table :attachments do |table|
			table.integer :post_id
			table.string :title
			table.string :file_type
			table.binary :file_data
			table.timestamps
		end
		create_table :categories do |table|
			table.string :name
			table.timestamps
		end
		create_table :comments do |table|
			table.integer :post_id
			table.integer :author_id
			table.string :content
			table.string :status
			table.timestamps
		end
		create_table :posts do |table|
			table.integer :category_id
			table.integer :author_id
			table.string :title
			table.string :body
			table.timestamps
		end
		create_table :tags do |table|
			table.string :name
			table.timestamps
		end
		create_table :tags_posts do |table|
			table.integer :tag_id
			table.integer :post_id
			table.timestamps
		end
		create_table :users do |table|
			table.string :login
			table.string :password
			table.string :display_name
			table.string :email_address
			table.string :url
			table.string :level
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
