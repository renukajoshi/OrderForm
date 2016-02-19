class Order < ActiveRecord::Base
	belongs_to :address
# <<<<<<< HEAD

	has_many :line_items
	has_many :products
	has_many :product_line_items
# =======
	
	has_many :line_items
# >>>>>>> 7d65d785a6f5ce1ed505785b887c7614dacf2248
	
	belongs_to :customer 
	
	has_many :products

# <<<<<<< HEAD
	# accepts_nested_attributes_for :customer 
	# accepts_nested_attributes_for :address , :line_items
	
	validates_presence_of :order_no,:tracking_no,:delivery_date,:order_value

	validates_uniqueness_of :order_no , :tracking_no
# =======

	accepts_nested_attributes_for :customer 
	
	#Added New Text
	
	accepts_nested_attributes_for :address , :line_items
# >>>>>>> 7d65d785a6f5ce1ed505785b887c7614dacf2248
end
