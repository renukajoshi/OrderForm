class Items < ActiveRecord::Base
	belongs_to :line_item
	belongs_to :product
end
