class Attachments < ActiveRecord::Migration
	def self.up
		create_table :attachments do |table|
			table.integer :post_id, :null => false
			table.string :title, :null => false
			table.string :file_type, :null => false
			table.binary :file_data, :null => false
			table.timestamps
		end
	end

	def self.down
		drop_table :attachments
	end
end
