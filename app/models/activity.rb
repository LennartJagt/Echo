class Activity < ActiveRecord::Base
  attr_accessible :name, :price
  belongs_to :animal
end
