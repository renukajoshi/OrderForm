class CreateProductLineItems < ActiveRecord::Migration
  def change
    create_table :product_line_items do |t|
      t.integer :product_id
      t.integer :line_items_id

      t.timestamps
    end
  end
end
