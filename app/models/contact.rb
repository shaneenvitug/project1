class Contact < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :groups
  belongs_to :favourite, :optional => true

  validates :email, :phone, :presence => true, :uniqueness => true
end
