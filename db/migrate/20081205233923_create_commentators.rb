class CreateCommentators < ActiveRecord::Migration
  def self.up
    create_table :commentators do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :commentators
  end
end
