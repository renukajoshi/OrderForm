class Product < ActiveRecord::Base
	belongs_to :order

	has_many :line_items

	#scope :by_name , -> where{(order(:name))}
end
