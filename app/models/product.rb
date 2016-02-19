class Product < ActiveRecord::Base
	belongs_to :order

	has_many :items
	has_many :line_items , through: :items 


	#scope :by_name , -> where{(order(:name))}
end
