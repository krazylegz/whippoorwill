class Admin < User
  default_scope :conditions => {:role => 'Admin'}
end
