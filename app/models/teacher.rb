class Teacher < ActiveRecord::Base
  has_many :students
  has_one :user
  accepts_nested_attributes_for :user, allow_destroy: true

end
