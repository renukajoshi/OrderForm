class LineItem < ActiveRecord::Base
  belongs_to :order
  has_many :product_line_items
  has_many :products , through:  :product_line_items

  validates_presence_of :name,:sku,:quantity,:price
end
