class Address < ActiveRecord::Base
	belongs_to :user
	belongs_to :customer
	has_many :orders 

	validates_presence_of :permanant_addr, :office_addr, :temparary_addr, :city, :state # :pin_code
end