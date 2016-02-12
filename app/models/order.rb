class Order < ActiveRecord::Base
	has_many :lineitems
	has_many :products

	belongs_to :customer
	belongs_to :address , :inverse_of => :orders

	accepts_nested_attributes_for :customer
	accepts_nested_attributes_for :address
	accepts_nested_attributes_for :lineitems


	 # def order_value
  # 		lineitems.collect { |oi| oi.valid? ? (oi.quantity * oi.price) : 0 }
  #   end

    # def check_customer_email
    # 	customer = Customer.find_by(email: params[:customer][:email])
    # 	if customer.present?
    		
    # 	end
   	# end
end
