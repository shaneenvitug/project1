class User < ApplicationRecord
  has_secure_password

  validates :email, :presence => true, :uniqueness => true

  GENDER_TYPES = [ ["Male", "0"], ["Female", "1"] ]
  validates_inclusion_of :is_female, in: [true, false]
end
