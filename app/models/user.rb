class User < ApplicationRecord
  has_many :contacts
  has_many :groups
  has_secure_password

  validates :email, :presence => true, :uniqueness => true

end
