class Customer < ActiveRecord::Base
	has_many :addresses 
	has_many :orders
	#belongs_to :user

	accepts_nested_attributes_for :addresses

	validates_presence_of :fname, :lname, :email, :contact_no #, :birthdate

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i ,:message => "Invalid format"
	
end
