class Product < ActiveRecord::Base
	belongs_to :order

	has_many :lineitems

	#scope :by_name , -> where{(order(:name))}
end
