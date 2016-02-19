class AddOrderToProductLineItems < ActiveRecord::Migration
  def change
    add_reference :product_line_items, :order, index: true
  end
end
