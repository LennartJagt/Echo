class Visit < ActiveRecord::Base
  attr_accessible :activity_id, :date, :datetime, :practice_id, :animals_attributes
  belongs_to :practice
  has_many :animals
  accepts_nested_attributes_for :animals, :allow_destroy => true
end
