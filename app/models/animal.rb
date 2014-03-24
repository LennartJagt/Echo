class Animal < ActiveRecord::Base
  attr_accessible :name, :owner_last_name, :specie, :activities_attributes
  has_many :activities
  belongs_to :visits
end
