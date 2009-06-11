class Author < User
  has_many :posts

  default_scope :conditions => {:role => 'Author'}

  def self.find(*params)
    params[0][:conditions] = "level >= 2"
    super
  end

end
