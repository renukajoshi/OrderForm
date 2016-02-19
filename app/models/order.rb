class Order < ActiveRecord::Base
	belongs_to :address
	
	has_many :line_items
	
	belongs_to :customer 
	
	has_many :products


	accepts_nested_attributes_for :customer 
	
	#Added New Text
	
	accepts_nested_attributes_for :address , :line_items
end
