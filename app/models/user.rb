class User < ActiveRecord::Base
  has_secure_password
  belongs_to :teacher
  belongs_to :student
  belongs_to :parent

  def teacher?
    self.role == 'teacher'
  end

  def student?
    self.role == 'student'
  end

  def parent?
    self.role == 'parent'
  end
end
