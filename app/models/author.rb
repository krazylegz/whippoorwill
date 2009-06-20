class Author < User
  has_many :posts

  default_scope :conditions => {:role => 'Author'}

end
