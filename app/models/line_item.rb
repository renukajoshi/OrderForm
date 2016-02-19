class LineItem < ActiveRecord::Base
  belongs_to :order
  has_many :items
  has_many :products , through: :items

  validates_presence_of :name,:sku,:quantity,:price
end
