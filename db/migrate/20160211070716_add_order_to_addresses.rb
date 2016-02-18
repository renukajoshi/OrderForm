class AddOrderToAddresses < ActiveRecord::Migration
  def change
    add_reference :addresses, :order, index: true
  end
end
