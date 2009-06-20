class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :author
  has_many :commments
  has_and_belongs_to_many :tags, {:join_table => :tags_posts}
end
