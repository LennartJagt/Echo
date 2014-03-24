class Practice < ActiveRecord::Base
  attr_accessible :bank_account_number, :email_address, :name, :owner_first_name, :owner_last_name, :telephone, :vat_number, :address_attributes, :visits_attributes
  has_one :address, dependent: :destroy
  has_many :visits
  accepts_nested_attributes_for :address, :allow_destroy => true
  accepts_nested_attributes_for :visits
  
end
