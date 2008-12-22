class Author < User
  has_many :posts
  
  self.level = '2'


  def self.find(*params)
    params[0][:conditions] = "level >= 2"
    super
  end

end
