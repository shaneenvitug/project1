class Contact < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :groups

  validates :name, :email, :phone, :presence => true, :uniqueness => true
end
