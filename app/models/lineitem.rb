class Lineitem < ActiveRecord::Base
	belongs_to :product

	belongs_to :order

	# def total 
	# 	lineitems.colloect{|li| li.valid ? (li.quantity * li.price): 0} .sum
	# end
end
