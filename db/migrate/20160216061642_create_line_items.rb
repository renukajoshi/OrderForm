class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :name
      t.integer :sku
      t.integer :quantity
      t.integer :price
      t.references :order, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
