class Order < ActiveRecord::Base
	has_many :lineitems
	has_many :products

	belongs_to :customer
	belongs_to :address

	accepts_nested_attributes_for :customer
	accepts_nested_attributes_for :address
	accepts_nested_attributes_for :lineitems


	def order_value
   		lineitems.collect { |oi| oi.valid? ? (oi.quantity * oi.price) : 0 }.sum
    end



  	# def self.order_delivery_date
  	# 	if Date.today 
  	# 		@order_delivery.delivery_time  = Date.today + 7.days
  	# 	else
  	# 	end
  	# end

#   	def find_products
#   		self.product.find(:all)
#   	end
end
