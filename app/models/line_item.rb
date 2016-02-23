class LineItem < ActiveRecord::Base
  belongs_to :order
  
  has_many :products 

  validates_presence_of :name,:sku,:quantity,:price
end
