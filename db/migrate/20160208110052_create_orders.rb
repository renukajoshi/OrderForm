class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_no
      t.integer :tracking_no
      t.date :delivery_date
      t.decimal :order_value
      t.string :order_currency
      t.text :instruction
      t.boolean :is_express_delivery
      t.boolean :is_customer_pickup

      t.timestamps
    end
  end
end
