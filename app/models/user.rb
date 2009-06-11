class User < ActiveRecord::Base

  # User role checks
  def admin?
    self.role == 'admin'
  end

  def author?
    self.role == 'author'
  end

  def commentator?
    self.role == 'commentator'
  end
end
