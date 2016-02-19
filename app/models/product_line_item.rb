class ProductLineItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :line_items
	belongs_to :order
end
