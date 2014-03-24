class Address < ActiveRecord::Base
  attr_accessible :street_number, :street, :town, :zip_code, :practice_id
  belongs_to :practice
end
