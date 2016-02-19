class Order < ActiveRecord::Base
	belongs_to :address

	has_many :line_items
	has_many :products
	has_many :product_line_items
	
	belongs_to :customer 
	belongs_to :address

	accepts_nested_attributes_for :customer 
	accepts_nested_attributes_for :address , :line_items
	
	validates_presence_of :order_no,:tracking_no,:delivery_date,:order_value

	validates_uniqueness_of :order_no , :tracking_no
end
