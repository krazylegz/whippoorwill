class Commentator < User
  has_many :comments
  default_scope :conditions => {:role => 'Commentator'}
end
