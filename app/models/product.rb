class Product < ActiveRecord::Base
	belongs_to :order

	has_many :product_line_items
	has_many :line_items , through: :product_line_items


	#scope :by_name , -> where{(order(:name))}
end
