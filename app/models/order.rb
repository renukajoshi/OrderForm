class Order < ActiveRecord::Base
	has_many :lineitems
	has_many :products

	belongs_to :customer
	belongs_to :address

	accepts_nested_attributes_for :customer
	accepts_nested_attributes_for :address
end
