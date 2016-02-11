class Order < ActiveRecord::Base
	has_many :lineitems
	has_many :products

	belongs_to :customer
	belongs_to :address , :inverse_of => :orders

	accepts_nested_attributes_for :customer
	accepts_nested_attributes_for :address
	accepts_nested_attributes_for :lineitems


	 def order_value
  		lineitems.collect { |oi| oi.valid? ? (oi.quantity * oi.price) : 0 }
    end

   #  def check_email_exists
   #  	if Customer.exists?(:email => self.email)
   #    		render :show , addresses_path(@address)
   #  	end
  	# end 


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
