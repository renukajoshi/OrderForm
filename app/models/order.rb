class Order < ActiveRecord::Base
	has_many :line_items
	has_many :products

	belongs_to :customer 
	belongs_to :address

	accepts_nested_attributes_for :customer , :address , :line_items
	# accepts_nested_attributes_for :address
	# accepts_nested_attributes_for :line_items

	# def to_json
	# 	json = "{"
 #  		json += "id:'#{self.id}'"
 #  		json += ",fname'#{self.fname}'"
 #  		json += "}"
	# end
end
