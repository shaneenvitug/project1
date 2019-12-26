class Group < ApplicationRecord
  has_and_belongs_to_many :contacts
  belongs_to :user, :optional => true
  validates_uniqueness_of :name, scope: :user_id    #scope allows for different users to have a group called "work"
                                                    #but each user can only have ONE group called "work"  
  validates :name, :presence => true                #backend validation - no empty string 
end
