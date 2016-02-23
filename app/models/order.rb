class Order < ActiveRecord::Base
	belongs_to :address


	# has_many :line_items
	# has_many :products
	
	
	has_many :line_items
	
	belongs_to :customer 
	
	has_many :products

	# accepts_nested_attributes_for :customer 
	# accepts_nested_attributes_for :address , :line_items
	
	validates_presence_of :order_no,:tracking_no,:delivery_date,:order_value

	validates_uniqueness_of :order_no , :tracking_no

	accepts_nested_attributes_for :customer 
	
	#Added New Text
	
	accepts_nested_attributes_for :address , :line_items
end
